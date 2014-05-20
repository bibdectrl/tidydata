##Data from Samsung Galaxy accelerometers
The data was taken from the [University of California, Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), from data collected by researchers at the [Smartlab](http://www.smartlab.ws) at the UniversitÃ  degli Studi di Genova.

According to the researchers, the
 > experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The training and testing data was merged using the rbind function.

The original data included measurements on 561 different variables, but has been pared down to only include data involving the means and standard deviations of measurements, using R's grep function.

The column names for the values were cleaned up to remove capital letters, dashes, and brackets, and periods inserted for readability, using the gsub function.

The aggregate function was used to collect the average measurements for each participant and each activity.
