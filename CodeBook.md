# Code Book.md

## Variables in the code
data_activities: Combined data by row of data_trainactivities and data_testactivities with column name Activity

data_features: Data in file_features turned into table format with column name feature_id for the first column and Features for second column.

data_filtered: extracted data that measures mean and starndard deviation for each measurement of data_merged.

data_labels: Data in file_labels turned into table format with column name actvity_id for the first column and Activity for second column.

data_merged: Combined data by column of data_activities, data_subjects, and data_sets

data_sets: Combined data by row of data_trainingset and data_testset with column names from data_features.

data_subjects: Combined data by row of data_trainsubject and data_testsubject with column name Subject.

data_testactivities: Data in file_testactivities turned into table format without header.

data_testset: Data in file_testset turned into table format without header.

data_testsubject: Data in file_testsubject turned into table format without header.

data_trainingset: Data in file_trainingset turned into table format without header.

data_trainactivities:  Data in file_trainactivities turned into table format without header.

data_trainsubject: Data in file_trainsubject turned into table format without header.

datadir: Directory where data is stored

datasetdir: Directory where root data source after downloading the data and extracting it.

dateDownloaded: Time and date of download of the file that used in this script.

file_features: Variable name for features.txt in datasetdir.

file_labels: Variable name for activity_labels.txt in datasetdir.

file_trainingset: Variable name for train/X_train.txt in datasetdir.

file_trainactivities: Variable name for train/y_train.txt in datasetdir.

file_trainsubject: Variable name for train/subject_train.txt in datasetdir.

file_testset: Variable name for test/X_test.txt in datasetdir.

file_testactivities: Variable name for test/y_test.txt in datasetdir.

file_testsubject: Variable name for test/subject_test.txt in datasetdir.

fileUrl: URL of where the data source is located.

index_activity_name: holds index interger where the activity name located in column

num_activties: Counts number of activity labels are available.  There are 6 in this case: WALKING, WALKING_UPSTAIRS, WALKING_DO WNSTAIRS, SITTING, STANDING, and LAYING

zipfiledatasets: Compressed zip file that downloaded from the data source, which is named datasets.zip


## Modifications
### Combined data by Row:
* data_activities: Combined data by row of data_trainactivities and data_testactivities with column name Activity
* data_sets: Combined data by row of data_trainingset and data_testset with column names from data_features.
* data_subjects: Combined data by row of data_trainsubject and data_testsubject with column name Subject.

### Merged data by columns:
* data_merged: Combined data by column of data_activities, data_subjects, and data_sets

### Filtered Data:
* data_filtered: extracted data that measures mean and starndard deviation for each measurement of data_merged.

### Modified activity number to activity name to give more descriptive information
* Modified data type of Activity to as.character
* Assign Activity name to where data folds activity_id
* Encode vector as factor

### Modified column names
*  Column name contains lower character t at the beginning is replaced with "Time"
*  Column name contains lower character f at the beginning is replaced with "Frequency"
*  Column name contains Acc is replaced with Acceleration
*  Column name contains Gyro is replaced with Gyroscope
*  Column name contains Mag is replaced with Magnitude
*  Column name contains -mean is replaced with Mean
*  Column name contains -std is replaced with STD

### Caculate average of each variable for each activity and each subject
*  Encode Subject as a factor
*  Caculate mean depending on Activity and Subject.

## Variables in Data
### Each subject performed  different activities.  Here are available labels:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DO WNSTAIRS
* SITTING 
* STANDING
* LAYING

### Name of Columns
* Activity
* Subject
* TimeBodyAccelerationMean()-X
* TimeBodyAccelerationMean()-Y
* TimeBodyAccelerationMean()-Z
* TimeBodyAccelerationSTD()-X
* TimeBodyAcceleration-correlation()-X,Z
* TimeBodyAcceleration-correlation()-Y,Z
* TimeGravityAccelerationMean()-X
* TimeGravityAccelerationMean()-Y
* TimeGravityAccelerationMean()-Z
* TimeGravityAccelerationSTD()-X
* TimeGravityAcceleration-correlation()-X,Z
* TimeGravityAcceleration-correlation()-Y,Z
* TimeBodyAccelerationJerkMean()-X
* TimeBodyAccelerationJerkMean()-Y
* TimeBodyAccelerationJerkMean()-Z
* TimeBodyAccelerationJerkSTD()-X
* TimeBodyAccelerationJerk-correlation()-X,Z
* TimeBodyAccelerationJerk-correlation()-Y,Z
* TimeBodyGyroscopeMean()-X
* TimeBodyGyroscopeMean()-Y
* TimeBodyGyroscopeMean()-Z
* TimeBodyGyroscopeSTD()-X
* TimeBodyGyroscope-correlation()-X,Z
* TimeBodyGyroscope-correlation()-Y,Z
* TimeBodyGyroscopeJerkMean()-X
* TimeBodyGyroscopeJerkMean()-Y
* TimeBodyGyroscopeJerkMean()-Z
* TimeBodyGyroscopeJerkSTD()-X
* TimeBodyGyroscopeJerk-correlation()-X,Z
* TimeBodyGyroscopeJerk-correlation()-Y,Z
* TimeBodyAccelerationMagnitude-arCoeff()
* TimeBodyAccelerationMagnitude-arCoeff()
* TimeGravityAccelerationMagnitude-arCoeff()
* TimeGravityAccelerationMagnitude-arCoeff()
* TimeBodyAccelerationJerkMagnitude-arCoeff()
* TimeBodyAccelerationJerkMagnitude-arCoeff()
* TimeBodyGyroscopeMagnitude-arCoeff()
* TimeBodyGyroscopeMagnitude-arCoeff()
* TimeBodyGyroscopeJerkMagnitude-arCoeff()
* TimeBodyGyroscopeJerkMagnitude-arCoeff()
* FrequencyBodyAccelerationMean()-X
* FrequencyBodyAccelerationMean()-Y
* FrequencyBodyAccelerationMean()-Z
* FrequencyBodyAccelerationSTD()-X
* FrequencyBodyAcceleration-bandsEnergy()-,
* FrequencyBodyAcceleration-bandsEnergy()-,
* FrequencyBodyAccelerationJerkMean()-X
* FrequencyBodyAccelerationJerkMean()-Y
* FrequencyBodyAccelerationJerkMean()-Z
* FrequencyBodyAccelerationJerkSTD()-X
* FrequencyBodyAccelerationJerk-bandsEnergy()-,
* FrequencyBodyAccelerationJerk-bandsEnergy()-,
* FrequencyBodyGyroscopeMean()-X
* FrequencyBodyGyroscopeMean()-Y
* FrequencyBodyGyroscopeMean()-Z
* FrequencyBodyGyroscopeSTD()-X
* FrequencyBodyGyroscope-bandsEnergy()-,
* FrequencyBodyGyroscope-bandsEnergy()-,
* FrequencyBodyAccelerationMagnitude-skewness()
* FrequencyBodyAccelerationMagnitude-kurtosis()
* FrequencyBodyBodyAccelerationJerkMagnitude-skewness()
* FrequencyBodyBodyAccelerationJerkMagnitude-kurtosis()
* FrequencyBodyBodyGyroscopeMagnitude-skewness()
* FrequencyBodyBodyGyroscopeMagnitude-kurtosis()

