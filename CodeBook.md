## Week 4 Course Assignment ##

	Variables: See features_info.txt and features.txt
	Data: See README.txt
	Transformations from original data files:
		1. Joined test and train data
 		2. Removed measurements not involving mean or standard deviation
		3. Joined Activity Labels with measurement data
		4. Included Subject ID, Activity Labels, and measurement data in single data set
		5. Removed reference IDs (except for Subject)
		6. Created secondary data set (tidy_data), including average of each measurement per Subject / Activity
	Assumptions:
		1. Original data is available in order to create full_data.txt and tidy_data.txt
		2. Original data is extracted into your current working directory. (EX: <working directory> + '/UCI HAR Dataset')