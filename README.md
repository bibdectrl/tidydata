tidydata
========

To run the data cleaning operations, download the [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), and unzip it into any directory. Then, place **run_analysis.R ** into the root of that directory, and run it. This will produce the tidier dataset, which will be called "tidyset.csv".

The tidier dataset merges the training and testing sets from the study, and selects measurements that are themselves measurements of means and standard deviation on the original measurements. The data is presented in aggregate form for each participant and activity measured in the study, showing the average of each value for each participant and activity.
