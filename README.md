## Week 4 Course Assignment - README ##

	Original Source Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	Transformations from original data files:
		1. Removed measurements not involving mean or standard deviation
		2. Joined Activity Labels with measurement data
		3. Included Subject ID, Activity Labels, and measurement data in single data set
		4. Removed reference IDs (except for Subject)
		5. Joined test and train data
		6. Created secondary data set (tidy_data), including average of each measurement per Subject / Activity
	Assumptions:
		1. Original data is available in order to create full_data.txt and tidy_data.txt
		2. Original data is extracted into your current working directory. (EX: <working directory> + '/UCI HAR Dataset')
