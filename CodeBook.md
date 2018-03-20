# Code Book

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

## Data cleaning

To get this data set clean, it was necessary to merge two different data sets (train and test data set). Each of these original data sets were originally divided by their variables into three different text files. So, it was necessary to merge this variables in order to get each of this data sets ready and after that, were merged into one complete data set. Then, the data set was subset in order to get the variables that are shown below. 

## Variable list

The set of variables that were used for this dataset are: 

* timeBodyAccelerometer-mean()-X
* timeBodyAccelerometer-mean()-Y
* timeBodyAccelerometer-mean()-Z
* timeBodyAccelerometer-std()-X
* timeBodyAccelerometer-std()-Y
* timeBodyAccelerometer-std()-Z
* timeGravityAccelerometer-mean()-X
* timeGravityAccelerometer-mean()-Y
* timeGravityAccelerometer-mean()-Z
* timeGravityAccelerometer-std()-X
* timeGravityAccelerometer-std()-Y
* timeGravityAccelerometer-std()-Z
* timeBodyAccelerometerJerk-mean()-X
* timeBodyAccelerometerJerk-mean()-Y
* timeBodyAccelerometerJerk-mean()-Z
* timeBodyAccelerometerJerk-std()-X
* timeBodyAccelerometerJerk-std()-Y
* timeBodyAccelerometerJerk-std()-Z
* timeBodyGyroscope-mean()-X
* timeBodyGyroscope-mean()-Y
* timeBodyGyroscope-mean()-Z
* timeBodyGyroscope-std()-X
* timeBodyGyroscope-std()-Y
* timeBodyGyroscope-std()-Z
* timeBodyGyroscopeJerk-mean()-X
* timeBodyGyroscopeJerk-mean()-Y
* timeBodyGyroscopeJerk-mean()-Z
* timeBodyGyroscopeJerk-std()-X
* timeBodyGyroscopeJerk-std()-Y
* timeBodyGyroscopeJerk-std()-Z
* timeBodyAccelerometerMag-mean()
* timeBodyAccelerometerMag-std()
* timeGravityAccelerometerMag-mean()
* timeGravityAccelerometerMag-std()
* timeBodyAccelerometerJerkMag-mean()
* timeBodyAccelerometerJerkMag-std()
* timeBodyGyroscopeMag-mean()
* timeBodyGyroscopeMag-std()
* timeBodyGyroscopeJerkMag-mean()
* timeBodyGyroscopeJerkMag-std()
* frequencyBodyAccelerometer-mean()-X
* frequencyBodyAccelerometer-mean()-Y
* frequencyBodyAccelerometer-mean()-Z
* frequencyBodyAccelerometer-std()-X
* frequencyBodyAccelerometer-std()-Y
* frequencyBodyAccelerometer-std()-Z
* frequencyBodyAccelerometerJerk-mean()-X
* frequencyBodyAccelerometerJerk-mean()-Y
* frequencyBodyAccelerometerJerk-mean()-Z
* frequencyBodyAccelerometerJerk-std()-X
* frequencyBodyAccelerometerJerk-std()-Y
* frequencyBodyAccelerometerJerk-std()-Z
* frequencyBodyGyroscope-mean()-X
* frequencyBodyGyroscope-mean()-Y
* frequencyBodyGyroscope-mean()-Z
* frequencyBodyGyroscope-std()-X
* frequencyBodyGyroscope-std()-Y
* frequencyBodyGyroscope-std()-Z
* frequencyBodyAccelerometerMag-mean()
* frequencyBodyAccelerometerMag-std()
* frequencyBodyBodyAccelerometerJerkMag-mean()
* frequencyBodyBodyAccelerometerJerkMag-std()
* frequencyBodyBodyGyroscopeMag-mean()
* frequencyBodyBodyGyroscopeMag-std()
* frequencyBodyBodyGyroscopeJerkMag-mean()
* frequencyBodyBodyGyroscopeJerkMag-std()
* activity
* subject


### Identifiers

* Subjet: The ID of the test subject.
* Activity: The type of activity performed when the corresponding measurements were taken.

### Measurements

Names of Features were labelled using descriptive variable names.

* Prefix t is replaced by time
* Acc is replaced by Accelerometer
* Gyro is replaced by Gyroscope
* Prefix f is replaced by frequency
* Mag is replaced by Magnitude


### Activity labels

* Walking (value 1): Subject was walking during the test.
* Walking_upstairs (value 2): Subject was walking up a staircase during the test.
* Walking_downstairs (value 3): Subject was walking down a staircase during the test.
* Sitting (value 4): Subject was sitting during the test.
* Standing (value 5): Subject was standing during the test.
* Laying (value 6): Subject was laying down suring the test.

## Authors
* **Juan Isern** - *Initial work* - [JuanIsernGhosn](https://github.com/JuanIsernGhosn/)
