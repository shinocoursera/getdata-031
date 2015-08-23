# Getting and Cleaning Data
## Introduction
This is a document to describe what is the process necessary to execute run_analysis.R file, which is part of Coursera Getting and Cleaning Data course project.

## Files
run_analsysis.R: is the file that run the R code.
READEME.md: is the file you are currently reading, which describes what's in this repository and their purpose.
CodeBook.md: is the file that describes the variables, the data, and any transformations that happend from original data to cleaned up of data.

## File: run_analysis.R
The file is called run_analsysis.R and it contains actual R code that execute following:
* Step 1: Merges the training and the test sets to create one data set.
* Step 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
* Step 3: Uses descriptive activity names to name the activities in the data set
* Step 4: Appropriately labels the data set with descriptive variable names. 
* Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Directory and File Structures
### Before the run:
* ./CodeBook.md
* ./README.md
* ./run_analysis.R

### After the run:
* ./CodeBook.md
* ./README.md
* ./data
* ./data_tidy.txt
* ./run_analysis.R

* ./data/UCI HAR Dataset
* [./data/datasets.zip](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

* ./data/UCI HAR Dataset/README.txt
* ./data/UCI HAR Dataset/activity_labels.txt
* ./data/UCI HAR Dataset/features.txt
* ./data/UCI HAR Dataset/features_info.txt
* ./data/UCI HAR Dataset/test
* ./data/UCI HAR Dataset/train

* ./data/UCI HAR Dataset/test/Inertial Signals
* ./data/UCI HAR Dataset/test/X_test.txt
* ./data/UCI HAR Dataset/test/subject_test.txt
* ./data/UCI HAR Dataset/test/y_test.txt

* ./data/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
* ./data/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt

* ./data/UCI HAR Dataset/train/Inertial Signals
* ./data/UCI HAR Dataset/train/X_train.txt
* ./data/UCI HAR Dataset/train/subject_train.txt
* ./data/UCI HAR Dataset/train/y_train.txt

* ./data/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
* ./data/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt

*Original Data* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones