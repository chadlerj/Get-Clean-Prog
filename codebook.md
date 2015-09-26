## Title: Getting and Cleaning Data Assignment
## September 2015

## Description

This document describes the data in smartphone.txt which is the result of a project
designed test a student's ability to reformat a raw dataset into a tidy dataset.

### Collection of the Raw data.
The raw data came from here.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Creating the Tidy data file

The data was made tidy by executing the following steps.

* 1. Merging the testing and training datasets
* 2. Uses the features.txt file to label the columns in the mergeddata set
* 3. Uses the y_train and y_test files to apply activity index labels to each row
* 4. Uses the subject_train and subject_test files to apply a test subject label to each row
* 5. Creates a subset of the columns that only contain the measures of mean and standard deviation
* 6. Creates a tidy subset of the columns that provide the mean value for each unique activity and subject
* 7. Uses the activity_labels file to translate the activity index column to an easy to read label for the activity

### Description of the variables in the smartphone.txt file (the tidy data).

Taken from the Features_info.txt file provided in the raw data (link provided above).

	Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

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

Our file conversion simply takes the mean of each of the above variables.  We've also attached the following
Subject - an integer representing a particular participant.
Activity - the label for the activity supplied by the original raw data.


## Sources

Again the raw data was taken from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

taken from the original site: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Authors of the original data set:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.