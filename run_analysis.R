library(data.table)
library(dplyr)

default_dir <- getwd()
activity_labels <- read.table(paste0(default_dir, '/UCI HAR Dataset/activity_labels.txt'))
features <- read.table(paste0(default_dir, '/UCI HAR Dataset/features.txt'))

subject_test <- read.table(paste0(default_dir, '/UCI HAR Dataset/test/subject_test.txt'))
x_test <- read.table(paste0(default_dir, '/UCI HAR Dataset/test/x_test.txt'))
y_test <- read.table(paste0(default_dir, '/UCI HAR Dataset/test/y_test.txt'))

subject_train <- read.table(paste0(default_dir, '/UCI HAR Dataset/train/subject_train.txt'))
x_train <- read.table(paste0(default_dir, '/UCI HAR Dataset/train/x_train.txt'))
y_train <- read.table(paste0(default_dir, '/UCI HAR Dataset/train/y_train.txt'))

staging_test <- merge(activity_labels, y_test, by = "V1")
colnames(staging_test)[2] <- "Activity"
staging_test$V3 <- row.names(staging_test)

staging_train <- merge(activity_labels, y_train, by = "V1")
colnames(staging_train)[2] <- "Activity"
staging_train$V3 <- row.names(staging_train)

colnames(x_test) <- features$V2
colnames(x_train) <- features$V2

colnames(subject_test)[1] <- "Subject"
subject_test$V3 <- row.names(subject_test)
colnames(subject_train)[1] <- "Subject"
subject_train$V3 <- row.names(subject_train)

measure_col <- subset(features, (features$V2 %like% 'mean()' & !(features$V2 %like% 'meanFreq')) | features$V2 %like% 'std()')$V1
x_test_temp <- x_test[,measure_col]
x_test_temp$V3 <- row.names(x_test_temp)
x_train_temp <- x_train[,measure_col]
x_train_temp$V3 <- row.names(x_train_temp)

x_test_temp <- merge(subject_test, merge(staging_test, x_test_temp, by = "V3"), by = "V3")
x_test_temp <- x_test_temp[,-c(1,3)]
x_train_temp <- merge(subject_train, merge(staging_train, x_train_temp, by = "V3"), by = "V3")
x_train_temp <- x_train_temp[,-c(1,3)]

full_data <- rbind(x_test_temp,x_train_temp)
tidy_data <- group_by(full_data, Subject, Activity)
tidy_data <- summarize_each(tidy_data, funs(mean(., na.rm=TRUE)))

write.table(full_data, paste0(getwd(),'/full_data.txt'), sep="\t") 
write.table(tidy_data, paste0(getwd(),'/tidy_data.txt'), sep="\t") 

rm(subject_test)
rm(activity_labels)
rm(features)
rm(staging_test)
rm(staging_train)
rm(subject_train)
rm(x_test)
View(y_test)
rm(x_test_temp)
rm(x_train)
rm(x_train_temp)
rm(y_test)
rm(y_train)
rm(default_dir)
rm(measure_col)