## Get Data
datadir <- "./data"
datasetdir <- paste(datadir, "UCI HAR Dataset", sep="/")

## Creating file variables
file_features         <- paste( datasetdir, "features.txt",            sep="/") ## List of all features.
file_labels           <- paste( datasetdir, "activity_labels.txt",     sep="/") ## Links the class activities with their activity name.
file_trainingset      <- paste( datasetdir, "train/X_train.txt",       sep="/")  ## Training set.
file_trainactivities  <- paste( datasetdir, "train/y_train.txt",       sep="/") ## Training activities.
file_trainsubject     <- paste( datasetdir, "train/subject_train.txt", sep="/")
file_testset          <- paste( datasetdir, "test/X_test.txt",         sep="/") ## Test set.
file_testactivities   <- paste( datasetdir, "test/y_test.txt",         sep="/") ## Test activities.
file_testsubject      <- paste( datasetdir, "test/subject_test.txt",   sep="/")

## Download necessary data
zipfiledatasets <- paste(datadir, "datasets.zip", sep="/")
if( !file.exists(zipfiledatasets)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  if( !file.exists(datadir) ) { dir.create(datadir) }
  download.file(fileUrl, destfile=zipfiledatasets, method="curl")
  unzip(zipfiledatasets, exdir=datadir)
  dateDownloaded <- date()
}
## Creating data tables
data_trainingset      <- read.table(file_trainingset,     header=FALSE)
data_trainactivities  <- read.table(file_trainactivities, header=FALSE)
data_trainsubject     <- read.table(file_trainsubject,    header=FALSE)
data_testset          <- read.table(file_testset,         header=FALSE)  
data_testactivities   <- read.table(file_testactivities,  header=FALSE)
data_testsubject      <- read.table(file_testsubject,     header=FALSE)
data_features         <- read.table(file_features,        header=FALSE, col.names=c("feature_id", "Features"))
data_labels           <- read.table(file_labels,          header=FALSE, col.names=c("activity_id", "Activity"))

## 1) Merges the training and the test sets to create one data set.
## Mergin test and training sets
data_sets       <- rbind(data_trainingset,     data_testset)
data_activities <- rbind(data_trainactivities, data_testactivities)
data_subjects   <- rbind(data_trainsubject,    data_testsubject)

colnames(data_sets)       <- t(data_features$Features)
colnames(data_activities) <- "Activity"
colnames(data_subjects)   <- "Subject"

data_merged <- cbind(data_activities, data_subjects, data_sets)

## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
features_meanstd  <- grepl("(-std\\(\\)|-mean\\(\\))", data_features$Features)
data_filtered <- data_merged[, which(features_meanstd == TRUE)]

## 3) Uses descriptive activity names to name the activities in the data set
## In order to assign text value to Activity, first convert the Activity type to character vector

index_activity_name <- 2
num_activties <- as.integer(nrow(data_labels))
data_filtered$Activity <- sapply(data_filtered$Activity, as.character)
for(i in 1:num_activties){
  data_filtered$Activity[data_filtered$Activity == i] <- t(as.character(data_labels[i, index_activity_name]))  
}
data_filtered$Activity <- as.factor(data_filtered$Activity)

## 4) Appropriately activities the data set with descriptive variable names. 
names(data_filtered) <- gsub("^t",    "Time",         names(data_filtered))
names(data_filtered) <- gsub("^f",    "Frequency",    names(data_filtered))
names(data_filtered) <- gsub("Acc",   "Acceleration", names(data_filtered))
names(data_filtered) <- gsub("Gyro",  "Gyroscope",    names(data_filtered))
names(data_filtered) <- gsub("Mag",   "Magnitude",    names(data_filtered))
names(data_filtered) <- gsub("-mean", "Mean",         names(data_filtered))
names(data_filtered) <- gsub("-std",  "STD",          names(data_filtered))

## 5) From the data set in step 4, creates a second, independent tidy data 
## set with the average of each variable for each activity and each subject.
data_filtered$Subject <- as.factor(data_filtered$Subject)
data_tidy <-aggregate( . ~  Activity + Subject, data=data_filtered, mean)

write.table(data_tidy, file="data_tidy.txt", row.name=FALSE)
