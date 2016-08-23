##Source data##

This is a data set studying human activity recognition using smart phones, which can be obtained from UCI Machine Learning Repository website. A full description can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones The data for the project can be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


##R script##

The script "run_analysis.R" performs the following steps:

 1. Download the data and unzip dataset
 2. Read the training and test data sets
 3. Merge the training and test data sets
 4. Assign column names using descriptive variable names
 5. Extract only the measurements on the mean and standard deviation for each measurement
 6. Write the data set to file (full_data.txt)
 7. Create a second, independent tidy data set with the average of each variable for each activity and each subject
 8. Write the second data set to file (tidy_data.txt)


##Data sets Resulting from R Script:##

This code book summarizes the resulting data fields in full_data and tidy_data.txt.

Identifiers:

	subject - The ID of the test subject 
	activity - The activity performed when the measurements were taken

Measurements:

tBodyAccMeanX 
tBodyAccMeanY 
tBodyAccMeanZ 
tBodyAccStdX 
tBodyAccStdY 
tBodyAccStdZ 
tGravityAccMeanX 
tGravityAccMeanY 
tGravityAccMeanZ 
tGravityAccStdX 
tGravityAccStdY 
tGravityAccStdZ 
tBodyAccJerkMeanX 
tBodyAccJerkMeanY 
tBodyAccJerkMeanZ 
tBodyAccJerkStdX 
tBodyAccJerkStdY 
tBodyAccJerkStdZ 
tBodyGyroMeanX 
tBodyGyroMeanY 
tBodyGyroMeanZ 
tBodyGyroStdX 
tBodyGyroStdY 
tBodyGyroStdZ 
tBodyGyroJerkMeanX 
tBodyGyroJerkMeanY 
tBodyGyroJerkMeanZ 
tBodyGyroJerkStdX 
tBodyGyroJerkStdY 
tBodyGyroJerkStdZ 
tBodyAccMagMean 
tBodyAccMagStd 
tGravityAccMagMean 
tGravityAccMagStd 
tBodyAccJerkMagMean 
tBodyAccJerkMagStd 
tBodyGyroMagMean 
tBodyGyroMagStd 
tBodyGyroJerkMagMean 
tBodyGyroJerkMagStd 
fBodyAccMeanX 
fBodyAccMeanY 
fBodyAccMeanZ 
fBodyAccStdX 
fBodyAccStdY 
fBodyAccStdZ 
fBodyAccMeanFreqX 
fBodyAccMeanFreqY 
fBodyAccMeanFreqZ 
fBodyAccJerkMeanX 
fBodyAccJerkMeanY 
fBodyAccJerkMeanZ 
fBodyAccJerkStdX 
fBodyAccJerkStdY 
fBodyAccJerkStdZ 
fBodyAccJerkMeanFreqX 
fBodyAccJerkMeanFreqY 
fBodyAccJerkMeanFreqZ 
fBodyGyroMeanX 
fBodyGyroMeanY 
fBodyGyroMeanZ 
fBodyGyroStdX 
fBodyGyroStdY 
fBodyGyroStdZ 
fBodyGyroMeanFreqX 
fBodyGyroMeanFreqY 
fBodyGyroMeanFreqZ 
fBodyAccMagMean 
fBodyAccMagStd 
fBodyAccMagMeanFreq 
fBodyBodyAccJerkMagMean 
fBodyBodyAccJerkMagStd 
fBodyBodyAccJerkMagMeanFreq 
fBodyBodyGyroMagMean 
fBodyBodyGyroMagStd 
fBodyBodyGyroMagMeanFreq 
fBodyBodyGyroJerkMagMean 
fBodyBodyGyroJerkMagStd 
fBodyBodyGyroJerkMagMeanFreq


##Activity Labels
- Activies performed while measurements were taken

1. WALKING 
2. WALKING_UPSTAIRS 
3. WALKING_DOWNSTAIRS 
4. SITTING 
5. STANDING 
6. LAYING