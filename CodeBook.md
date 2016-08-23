##Source data##

This is a data set studying human activity recognition using smart phones, which can be obtained from UCI Machine Learning Repository website. A full description can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones The data for the project can be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Please Note: In order to perform the analysis the zipped file must be placed in your working directory.

##R script##

The script "run_analysis.R" performs the following steps:

 1. Read the training and test data sets
 2. Assign column names using descriptive variable names
 3. Merge the training and test data sets
 4. Extract only the measurements on the mean and standard deviation for each measurement
 5. Write the data set to file (full_data.txt)
 6. Create a second, independent tidy data set with the average of each variable for each activity and each subject
 7. Write the second data set to file (tidy_data.txt)


##Data sets Resulting from R Script:##

This code book summarizes the resulting data fields in full_data and tidy_data.txt.

Identifiers:

	activityid - The ID for the activity performed when the measurements were taken
	subjectid - The ID of the test subject 

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


Activity Labels: 

Activies performed while measurements were taken
1. WALKING 
2. WALKING_UPSTAIRS 
3. WALKING_DOWNSTAIRS 
4. SITTING 
5. STANDING 
6. LAYING