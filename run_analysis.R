if(!file.exists("./data")){dir.create("./data")}
unzip(zipfile="./getdata_projectfiles_UCI HAR Dataset.zip",exdir="./data")


x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

features <- read.table("./data/UCI HAR Dataset/features.txt")
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

colnames(x_train) <- features[,2]
colnames(y_train) <- "activityid"
colnames(subject_train) <- "subjectid"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activityid"
colnames(subject_test) <- "subjectid"
colnames(activitylabels) <- c("activityid","activitytype")

merge_train <- cbind(y_train,subject_train,x_train)
merge_test <- cbind(y_test,subject_test,x_test)
mergedata <- rbind(merge_train,merge_test)

colnames <- colnames(mergedata)

meanandstd <- (grepl("activityid",colnames)|grepl("subjectid",colnames)|grepl("mean..",colnames)|
               grepl("std..",colnames))

mean_std_set <- mergedata[,meanandstd==TRUE]

activitynames_set <- merge(mean_std_set,activitylabels,by="activityid",all.x=TRUE)

tidy_data <- aggregate(.~subjectid+activityid, activitynames_set,mean)
tidy_data <- tidy_data[order(tidy_data$subjectid, tidy_data$activityid),]

write.table(activitynames_set, "full_data.txt", row.name=FALSE)
write.table(tidy_data,"tidy_data.txt",row.name=FALSE)