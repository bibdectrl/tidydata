run_analysis <- function(testing, training, features.data) {
  train.data <- read.table(testing)
  test.data <- read.table(training)
  merged.data <- rbind(train.data, test.data)
  features <- read.table(features.data)
  feature.names <- as.character(features[,2])
  colnames(merged.data) <- feature.names
  mean.columns <- grep(colnames(merged.data), pattern = "mean")
  std.columns <- grep(colnames(merged.data), pattern = "std")
  tidy.columns <- sort(c(mean.columns, std.columns))
  tidy.data <- merged.data[tidy.columns]
  colnames(tidy.data) <- gsub(tolower(colnames(tidy.data)), pattern="-", replace=".") 
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="body", replace=".body")
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="gyro", replace=".gyro")
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="jerk", replace=".jerk")
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="mag", replace=".mag")
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="freq", replace=".freq")
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="acc", replace=".acc")
  colnames(tidy.data) <- gsub(colnames(tidy.data), pattern="\\(\\)", replace="")
  test.subjects <- read.table("test/subject_test.txt")
  train.subjects <- read.table("train/subject_train.txt")
  test.activities <- read.table("test/y_test.txt")
  train.activities <- read.table("train/y_train.txt")
  all.subjects <- rbind(test.subjects, train.subjects)
  all.activities <- rbind(test.activities, train.activities)
  tidier.set <- cbind(all.activities, tidy.data)
  tidiest.set <- cbind(all.subjects, tidier.set)
  colnames(tidiest.set)[1] <- "subject"
  colnames(tidiest.set)[2] <- "activity"
  final.set <- tidiest.set[tidiest.set$subject == 1,]
  for (i in 2:30) {
    final.set <- rbind(final.set, tidiest.set[tidiest.set$subject == i,])
  }
  final.set
}

second.set.of.data <- function(tidy.set) {
  second.set <- aggregate(tidy.set, by=list(tidy.set$activity, tidy.set$subject), FUN = mean)[,3:83]
  second.set$activity <- as.character(second.set$activity)
  second.set$activity[second.set$activity == "1"] = "walking"
  second.set$activity[second.set$activity == "2"] = "walking.upstairs" 
  second.set$activity[second.set$activity == "3"] = "walking.downstairs" 
  second.set$activity[second.set$activity == "4"] = "sitting" 
  second.set$activity[second.set$activity == "5"] = "standing" 
  second.set$activity[second.set$activity == "6"] = "laying" 
  second.set
}

tidy.data <- run_analysis("train/X_train.txt", "test/X_test.txt", "features.txt")
second.set <- second.set.of.data(tidy.data)
write.table(second.set, "tidyset.csv", sep=",")
