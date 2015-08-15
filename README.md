# Getting and Cleaning Data. Peer Assessments.
The goal of this work is to take the raw data, process it and create a tidy data for further analysis.

## Files description
- UCI HAR Dataset.zip  
   The archive with the raw data to be processed and information about this data. The original source is [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- tidyData.txt  
   The result of this course project - the tidy data. More information can be found in the CodeBook.md
- run_analysis.R  
   Script that processes the archive with raw data and creates the tidy data.
- README.md  
   This file. It contain information about the work, the files related to this work, how they are related and how they work.
- CodeBook.md  
   This file contents information about the data and each variable of the data.

## How to read the tidy data into R.
tidyData = read.table('tidyData.txt', header = TRUE, sep = ' ')

## Why am I think that my tidy dataset is tidy?
Each variable is in one column, Each different observation of that variable is in a different row.  
Also each variable has a descriptive human readable name which also can be used in R without errors because it is not contains symbols like '-' or '('.

## How to launch the script
Place all files into your R workspace. Then enter in R console:  
source('run_analysis.R')

## What exactly does the script?

All transformations will be described step by step with references to the task of the assignment.  
Same flags can be found in the run_analysis.R file for easier navigation.

Note: as sayed in the task I need a script "that can be run as long as the Samsung data is in your working directory.", so I assume that there is "UCI HAR Dataset.zip" file in the current working directory of R.
#### Step 0: Unzip data.

During this step I unzip data for further processing.

### Task 1: "Merges the training and the test sets to create one data set"
#### Step 1: Combining separately test and train data.

Train data consists from the next files:  
- UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt  
- UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt  
- UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt  
- UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt  
- UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt  
- UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt  
- UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt  
- UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt  
- UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt  
- UCI HAR Dataset/test/subject_test.txt  
- UCI HAR Dataset/test/X_test.txt  
- UCI HAR Dataset/test/y_test.txt  

Test data consists from the next files:  
- UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt  
- UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt  
- UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt  
- UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt  
- UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt  
- UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt  
- UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt  
- UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt  
- UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt  
- UCI HAR Dataset/train/subject_train.txt  
- UCI HAR Dataset/train/X_train.txt  
- UCI HAR Dataset/train/y_train.txt  

In each group (test, train) files have the same number of rows

Both the train and the test data from the original raw data were treated equally here.  

Consider transformation on the example of the test group of files. Thr train group handles in the same way.  
The result dataset after this step were produced by combining all files from the current group ('test' in this example) into one by placing them column to column.  
Combination were done in the next order: subject_test, y_test, X_test, all others.  

So as the result of this step 2 datasets were produced (one for each group: test and train) with the same order of columns: subjectIdentifier, yResult, columns from X_test (or X_train) in unchanged order, columnds from other files in such a way, that column order is same in both test and train groups.

#### Step 2: Combining test and train data from previous step into one dataset

During this step, the test and train datasets from step 1 were combined into 1 dataset. To accomplish that rows from train dataset were put after rows of test dataset.

### Task 2: "Extracts only the measurements on the mean and standard deviation for each measurement."

In that task, I was asked to remain only those features from the raw data which correspondes to mean or standart deviation values. I had concluded that it is all features from X_test (or X_train) in which names is included phrase: '-mean()' or '-std()'. I have made that assumption basing on the information from the features_info.txt file. There is sayed that from the original data (which is included in the subdirectory 'Inertial Signals') a range of features were discovered. Then the list of functions was used onto these features. In that list among others, mean() and std() function are presented.  
In the end of that files also is sayed: "Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable" from which I have concluded that these are not a pure mean and standard deviation. These features were used as parameters for the angle() function and therefore they are not come into the group of "the measurements on the mean and standard deviation for each measurement".  
I suppose that you can think in other way but the task is not very precise and therefore there is no right way here. Besides, the purpose of that assignment is demonstration of the abbility to use learned skills, so the exact range of columns is not very impotant here, I suppose.


#### Step 3: Processing features.txt file

During this step information of features names and corresponding columns' numbers were loaded.  
From all names, only those who has '-mean(' or '-std(' in the name were remained,

#### Step 4: Deleting no needed colums from the combined data set

During this step from all columns in the cimbined dataset from task 1 were remained only those columns which are in the dataset from step 3 (and also columns of subject identifier and activity were remained)

### Task 3: "Uses descriptive activity names to name the activities in the data set."
#### Step 5: Loading data from the activity_labels.txt file

Activity labels were loaded here.

#### Step 6: Replacing current activity column by the one with descriptive names

The activity dataset was merged with the combined dataset by activity column. And after this activity column with numbers were removed and only column with names were remained.

### Task 4: "Appropriately labels the data set with descriptive variable names."

#### Step 7: Making of various string transformations

During this step next feature names transformation were accomplished:  
- leading 't' were replaced by 'TimeSeriesOf'
- leadinf 'f' were replaced by 'FrequencyDomainSignalsOf'
- abbreviation 'Acc' were replaced by 'Accelerometer'
- abbreviation 'Mag' were replaced by 'Magnitude'
- abbreviation 'Gyro' were replaced by 'Gyroscope'
- trailing 'X' were replaced by 'OfX'
- trailing 'Y' were replaced by 'OfY'
- trailing 'Z' were replaced by 'OfZ'
- function name 'mean()' were replaced by 'MeanValueOf'
- function name 'std()' were replaced by 'StandartDeviationOf'
- typo 'BodyBody' in the name of feature like 'fBodyBodyAccJerkMag' were replaced by 'Body'  
   (This is truly a typo because in the feature_info.txt file there are no feature with double 'Body', but there are feature with the name 'fBodyAccJerkMag' for example which must be included into features.txt with the name of each function but it didn't, instead in the features.txt are presented features with the double Body in there names. And this happend only in some cases with features with leading 'f' but in the same situation for features with leading 't' there are only one 'Body'. So I had concluded that it is a typo that must be fixed.)

#### Step 8: Putting function name onto the first place of the column name

I have decided to place function name onto the first place of column name insted of middle position. And it was done during this step.

#### Step 9: Setting new column names for the combined dataset

During this step new column names from teh previous step were seted for the combined dataset.

### Task 5: "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."
#### Step 10: Creating a tidy dataset with avereged columns by groups of pairs of 'Subject identifier' and 'activity'

New tidy data set was created here. For each column average value per group, generated by pairs of 'subject identifier' and 'activity', was counted.

#### Step 11: write the tidy data set into a file 

The tidy data set was writen into the tidyData.txt file.
