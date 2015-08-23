# Getting and Cleaning Data
## Introduction
This is a document to describe what is the process necessary to execute run_analysis.R file, which is part of Coursera Getting and Cleaning Data course project.

## Files
**run_analsysis.R**: is the file that run the R code.

**READEME.md**: is the file you are currently reading, which describes what's in this repository and their purpose.

**CodeBook.md**: is the file that describes the variables, the data, and any transformations that happend from original data to cleaned up of data.

## File: run_analysis.R
The file is called run_analsysis.R and it contains actual R code that execute following:
* Step 0: Download necessary data from the source and extract the data.
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

*Data Source* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The study goals (From data source)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DO WNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.  The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
