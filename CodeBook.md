# Code book

This file contains information about each variable of the resulted tidy data, more specifically:  
- Data description  
   The information about data intself: where it was obtained, what it holds in general.  
- Variables informafion
  - Description
  - Units
  - Possible values
   

## Data
### Original description of the features of the raw data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ   
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation

### Desctiption of the resulted tidy data
For all features from the previous section the average value per each pair (subject identifier, activity) was found. These averaged values for each pair are the tidy data.  
The resulted tidy data is organized as space separated values, that is a text file where each string correspondes to a row of the tidy table, first string contains headers, all values in each string are separated by single space and represents the cells of the row in the table (number of values in each string are the same)

## The tidy data's variables

SubjectIdentifier  
- Description: identifier of participant of the experiment  
- Units: integer  
- Values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30

ActivityType  
- Description: name of activity type, perfomed by a subject.  
- Units: String/factor  
- Values: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"

MeanValueOfTimeSeriesOfBodyAccelerometerOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfGravityAccelerometerOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of gravity accelerometer of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfGravityAccelerometerOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of gravity accelerometer of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfGravityAccelerometerOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of gravity accelerometer of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfGravityAccelerometerOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of gravity accelerometer of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfGravityAccelerometerOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of gravity accelerometer of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfGravityAccelerometerOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of gravity accelerometer of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerJerkOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer jerk of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerJerkOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer jerk of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerJerkOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer jerk of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerJerkOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer jerk of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerJerkOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer jerk of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerJerkOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer jerk of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeJerkOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope jerk of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeJerkOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope jerk of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeJerkOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope jerk of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeJerkOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope jerk of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeJerkOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope jerk of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeJerkOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope jerk of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfGravityAccelerometerMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of gravity accelerometer magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfGravityAccelerometerMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of gravity accelerometer magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyAccelerometerJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body accelerometer jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyAccelerometerJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body accelerometer jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfTimeSeriesOfBodyGyroscopeJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of time series of body gyroscope jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfTimeSeriesOfBodyGyroscopeJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of time series of body gyroscope jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerJerkOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer jerk of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerJerkOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer jerk of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerJerkOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer jerk of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerJerkOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer jerk of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerJerkOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer jerk of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerJerkOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer jerk of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyGyroscopeOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body gyroscope of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyGyroscopeOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body gyroscope of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyGyroscopeOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body gyroscope of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyGyroscopeOfX  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body gyroscope of X-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyGyroscopeOfY  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body gyroscope of Y-axis  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyGyroscopeOfZ  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body gyroscope of Z-axis  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyAccelerometerJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body accelerometer jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyAccelerometerJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body accelerometer jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyGyroscopeMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body gyroscope magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyGyroscopeMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body gyroscope magnitude  
- Units: Numeric  
- Values: [-1, 1]  

MeanValueOfFrequencyDomainSignalsOfBodyGyroscopeJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of mean value of frequency domain signals of body gyroscope jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

StandartDeviationOfFrequencyDomainSignalsOfBodyGyroscopeJerkMagnitude  
- Description: Average per pair (SubjectIdentifier, ActivityType) value of standart deviation of frequency domain signals of body gyroscope jerk magnitude  
- Units: Numeric  
- Values: [-1, 1]  

