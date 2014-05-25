##Data from Samsung Galaxy accelerometers
The data was taken from the [University of California, Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), from data collected by researchers at the [Smartlab](http://www.smartlab.ws) at the UniversitÃ  degli Studi di Genova.

According to the researchers, the
 > experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The training and testing data was merged using the rbind function.

The original data included measurements on 561 different variables, but has been pared down to only include data involving the means and standard deviations of measurements, using R's grep function.

The column names for the values were cleaned up to remove capital letters, dashes, and brackets, and periods inserted for readability, using the gsub function.

The aggregate function was used to collect the average measurements for each participant and each activity.

**subject**                                              INT between 1 and 30

**activity**                                             STRING

**t.body.acc.mean.x**

**t.body.acc.mean.y**

**t.body.acc.mean.z**

**t.body.acc.std.x**

**t.body.acc.std.y**

**t.body.acc.std.z**

**t.gravity.acc.mean.x**

**t.gravity.acc.mean.y**

**t.gravity.acc.mean.z**

**t.gravity.acc.std.x**

**t.gravity.acc.std.y**

**t.gravity.acc.std.z**

**t.body.acc.jerk.mean.x**

**t.body.acc.jerk.mean.y**

**t.body.acc.jerk.mean.z**

**t.body.acc.jerk.std.x**

**t.body.acc.jerk.std.y**

**t.body.acc.jerk.std.z**

**t.body.gyro.mean.x**

**t.body.gyro.mean.y**

**t.body.gyro.mean.z**

**t.body.gyro.std.x**

**t.body.gyro.std.y**

**t.body.gyro.std.z**

**t.body.gyro.jerk.mean.x**

**t.body.gyro.jerk.mean.y**

**t.body.gyro.jerk.mean.z**

**t.body.gyro.jerk.std.x**

**t.body.gyro.jerk.std.y**

**t.body.gyro.jerk.std.z**

**t.body.acc.mag.mean**

**t.body.acc.mag.std**

**t.gravity.acc.mag.mean**

**t.gravity.acc.mag.std**

**t.body.acc.jerk.mag.mean**

**t.body.acc.jerk.mag.std**

**t.body.gyro.mag.mean**

**t.body.gyro.mag.std**

**t.body.gyro.jerk.mag.mean**

**t.body.gyro.jerk.mag.std**

**f.body.acc.mean.x**

**f.body.acc.mean.y**

**f.body.acc.mean.z**

**f.body.acc.std.x**

**f.body.acc.std.y**

**f.body.acc.std.z**

**f.body.acc.mean.freq.x**

**f.body.acc.mean.freq.y**

**f.body.acc.mean.freq.z**

**f.body.acc.jerk.mean.x**

**f.body.acc.jerk.mean.y**

**f.body.acc.jerk.mean.z**

**f.body.acc.jerk.std.x**

**f.body.acc.jerk.std.y**

**f.body.acc.jerk.std.z**

**f.body.acc.jerk.mean.freq.x**

**f.body.acc.jerk.mean.freq.y**

**f.body.acc.jerk.mean.freq.z**

**f.body.gyro.mean.x**

**f.body.gyro.mean.y**

**f.body.gyro.mean.z**

**f.body.gyro.std.x**

**f.body.gyro.std.y**

**f.body.gyro.std.z**

**f.body.gyro.mean.freq.x**

**f.body.gyro.mean.freq.y**

**f.body.gyro.mean.freq.z**

**f.body.acc.mag.mean**

**f.body.acc.mag.std**

**f.body.acc.mag.mean.freq**

**f.body.body.acc.jerk.mag.mean**

**f.body.body.acc.jerk.mag.std**

**f.body.body.acc.jerk.mag.mean.freq**

**f.body.body.gyro.mag.mean**

**f.body.body.gyro.mag.std**

**f.body.body.gyro.mag.mean.freq**

**f.body.body.gyro.jerk.mag.mean**

**f.body.body.gyro.jerk.mag.std**

**f.body.body.gyro.jerk.mag.mean.freq**
