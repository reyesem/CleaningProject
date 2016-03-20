---
output: html_document
---
# Overview
The __run_analysis.R__ file constructs two datasets (__dffull.txt__ and __dfsummary.txt__).  These datasets were constructed from the test and training data available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The original test (X\_test.txt described in __StudySummary.txt__) and training (X\_train.txt described in __StudySummary.txt__) were stacked on top of one another.  Prior to merging the data, the subject identifier and corresponding activity for each feature vector was appended to the test (subject\_test.txt and y\_text.txt, respectively; these are described in __StudySummary.txt__) and training (subject\_traing.txt and y\_train.txt, respectively; these are described in __StudySummary.txt__).

After merging the data, only features capturing the mean and standard deviation of the original measurements were retained.  An additional variable was added to denote whether the record was originally classified as a test or training case.

A second dataset (__dfsummary.txt__) was constructed by averaging the features available in the full dataset within each subject for each activity level.  

The variables available in each dataset are described below.

# Description of dffull
The __dffull.txt__ file is a merged dataset containing the average and standard deviation of features from all subject (both test and training data).  The variables present in the dataset are described below:

* __tBodyAcc.mean.X__: The mean of the body linear acceleration in time, X direction (tBodyAcc-mean()-X described in __features_info.txt__).
* __tBodyAcc.mean.Y__: The mean of the body linear acceleration in time, Y direction (tBodyAcc-mean()-Y described in __features_info.txt__).
* __tBodyAcc.mean.Z__: The mean of the body linear acceleration in time, Z direction (tBodyAcc-mean()-Z described in __features_info.txt__).
* __tBodyAcc.std.X__: The standard deviation of the body linear acceleration in time, X direction (tBodyAcc-std()-X described in __features_info.txt__).
* __tBodyAcc.std.Y__: The standard deviation of the body linear acceleration in time, Y direction (tBodyAcc-std()-Y described in __features_info.txt__).
* __tBodyAcc.std.Z__: The standard deviation of the body linear acceleration in time, Z direction (tBodyAcc-std()-Z described in __features_info.txt__).
* __tGravityAcc.mean.X__: The average of the gravity acceleration in time, X direction (tGravityAcc-mean()-X described in __features_info.txt__).
* __tGravityAcc.mean.Y__: The average of the gravity acceleration in time, Y direction (tGravityAcc-mean()-Y described in __features_info.txt__).
* __tGravityAcc.mean.Z__: The average of the gravity acceleration in time, Z direction (tGravityAcc-mean()-Z described in __features_info.txt__).
* __tGravityAcc.std.X__: The standard deviation of the gravity acceleration in time, X direction (tGravityAcc-std()-X described in __features_info.txt__).
* __tGravityAcc.std.Y__: The standard deviation of the gravity acceleration in time, Y direction (tGravityAcc-std()-Y described in __features_info.txt__).
* __tGravityAcc.std.Z__: The standard deviation of the gravity acceleration in time, Z direction (tGravityAcc-std()-Z described in __features_info.txt__).
* __tBodyAccJerk.mean.X__: The mean of the body linear acceleration Jerk signal in time, X direction (tBodyAccJerk-mean()-X described in __features_info.txt__).
* __tBodyAccJerk.mean.Y__: The mean of the body linear acceleration Jerk signal in time, Y direction (tBodyAccJerk-mean()-Y described in __features_info.txt__).
* __tBodyAccJerk.mean.Z__: The mean of the body linear acceleration Jerk signal in time, Z direction (tBodyAccJerk-mean()-Z described in __features_info.txt__).
* __tBodyAccJerk.std.X__: The standard deviation of the body linear acceleration Jerk signal in time, X direction (tBodyAccJerk-std()-X described in __features_info.txt__).
* __tBodyAccJerk.std.Y__: The standard deviation of the body linear acceleration Jerk signal in time, Y direction (tBodyAccJerk-std()-Y described in __features_info.txt__).
* __tBodyAccJerk.std.Z__: The standard deviation of the body linear acceleration Jerk signal in time, Z direction (tBodyAccJerk-std()-Z described in __features_info.txt__).
* __tBodyGyro.mean.X__: The average of the body angular acceleration in time, X direction (tBodyGyro-mean()-X described in __features_info.txt__).
* __tBodyGyro.mean.Y__: The average of the body angular acceleration in time, Y direction (tBodyGyro-mean()-Y described in __features_info.txt__).
* __tBodyGyro.mean.Z__: The average of the body angular acceleration in time, Z direction (tBodyGyro-mean()-Z described in __features_info.txt__).
* __tBodyGyro.std.X__: The standard deviation of the body angular acceleration in time, X direction (tBodyGyro-std()-X described in __features_info.txt__).
* __tBodyGyro.std.Y__: The standard deviation of the body angular acceleration in time, Y direction (tBodyGyro-std()-Y described in __features_info.txt__).
* __tBodyGyro.std.Z__: The standard deviation of the body angular acceleration in time, Z direction (tBodyGyro-std()-Z described in __features_info.txt__).
* __tBodyGyroJerk.mean.X__: The average of the body angular acceleration Jerk signal in time, X direction (tBodyGyro-mean()-X described in __features_info.txt__).
* __tBodyGyroJerk.mean.Y__: The average of the body angular acceleration Jerk signal in time, Y direction (tBodyGyro-mean()-Y described in __features_info.txt__).
* __tBodyGyroJerk.mean.Z__: The average of the body angular acceleration Jerk signal in time, Z direction (tBodyGyro-mean()-Z described in __features_info.txt__).
* __tBodyGyroJerk.std.X__: The standard deviation of the body angular acceleration Jerk signal in time, X direction (tBodyGyro-std()-X described in __features_info.txt__).
* __tBodyGyroJerk.std.Y__: The standard deviation of the body angular acceleration Jerk signal in time, Y direction (tBodyGyro-std()-Y described in __features_info.txt__).
* __tBodyGyroJerk.std.Z__: The standard deviation of the body angular acceleration Jerk signal in time, Z direction (tBodyGyro-std()-Z described in __features_info.txt__).
* __tBodyAccMag.mean__: The average magnitude of the body linear acceleration in time (tBodyAccMag-mean() described in __features_info.txt__).
* __tBodyAccMag.std__: The standard deviation in the magnitude of the body linear acceleration in time (tBodyAccMag-std() described in __features_info.txt__).
* __tGravityAccMag.mean__: The average magnitude of the gravity acceleration in time (tGravityAccMag-mean() described in __features_info.txt__).
* __tGravityAccMag.std__: The standard deviation in the magnitude of the gravity acceleration in time (tGravityAccMag-std() described in __features_info.txt__).
* __tBodyAccJerkMag.mean__: The average magnitude of the body linear acceleration Jerk signal in time (tBodyAccJerkMag-mean() described in __features_info.txt__).
* __tBodyAccJerkMag.std__: The standard deviation in the magnitude of the body linear acceleration Jerk signal in time (tBodyAccJerkMag-std() described in __features_info.txt__).
* __tBodyGyroMag.mean__: The average magnitude of the body angular acceleration in time (tBodyGyroMag-mean() described in __features_info.txt__).
* __tBodyGyroMag.std__: The standard deviation in the magnitude of the body angular acceleration in time (tBodyGyroMag-std() described in __features_info.txt__).
* __tBodyGyroJerkMag.mean__: The average magnitude of the body angular acceleration Jerk signal in time (tBodyGyroJerkMag-mean() described in __features_info.txt__).
* __tBodyGyroJerkMag.std__: The standard deviation in the magnitude of the body angular acceleration Jerk signal in time (tBodyGyroJerkMag-std() described in __features_info.txt__).
* __fBodyAcc.mean.X__: The mean of the body linear acceleration in frequency, X direction (fBodyAcc-mean()-X described in __features_info.txt__).
* __fBodyAcc.mean.Y__: The mean of the body linear acceleration in frequency, Y direction (fBodyAcc-mean()-Y described in __features_info.txt__).
* __fBodyAcc.mean.Z__: The mean of the body linear acceleration in frequency, Z direction (fBodyAcc-mean()-Z described in __features_info.txt__).
* __fBodyAcc.std.X__: The standard deviation of the body linear acceleration in frequency, X direction (fBodyAcc-std()-X described in __features_info.txt__).
* __fBodyAcc.std.Y__: The standard deviation of the body linear acceleration in frequency, Y direction (fBodyAcc-std()-Y described in __features_info.txt__).
* __fBodyAcc.std.Z__: The standard deviation of the body linear acceleration in frequency, Z direction (fBodyAcc-std()-Z described in __features_info.txt__).
* __fBodyAccJerk.mean.X__: The mean of the body linear acceleration Jerk signal in frequency, X direction (fBodyAccJerk-mean()-X described in __features_info.txt__).
* __fBodyAccJerk.mean.Y__: The mean of the body linear acceleration Jerk signal in frequency, Y direction (fBodyAccJerk-mean()-Y described in __features_info.txt__).
* __fBodyAccJerk.mean.Z__: The mean of the body linear acceleration Jerk signal in frequency, Z direction (fBodyAccJerk-mean()-Z described in __features_info.txt__).
* __fBodyAccJerk.std.X__: The standard deviation of the body linear acceleration Jerk signal in frequency, X direction (fBodyAccJerk-std()-X described in __features_info.txt__).
* __fBodyAccJerk.std.Y__: The standard deviation of the body linear acceleration Jerk signal in frequency, Y direction (fBodyAccJerk-std()-Y described in __features_info.txt__).
* __fBodyAccJerk.std.Z__: The standard deviation of the body linear acceleration Jerk signal in frequency, Z direction (fBodyAccJerk-std()-Z described in __features_info.txt__).
* __fBodyGyro.mean.X__: The average of the body angular acceleration in frequency, X direction (fBodyGyro-mean()-X described in __features_info.txt__).
* __fBodyGyro.mean.Y__: The average of the body angular acceleration in frequency, Y direction (fBodyGyro-mean()-Y described in __features_info.txt__).
* __fBodyGyro.mean.Z__: The average of the body angular acceleration in frequency, Z direction (fBodyGyro-mean()-Z described in __features_info.txt__).
* __fBodyGyro.std.X__: The standard deviation of the body angular acceleration in frequency, X direction (fBodyGyro-std()-X described in __features_info.txt__).
* __fBodyGyro.std.Y__: The standard deviation of the body angular acceleration in frequency, Y direction (fBodyGyro-std()-Y described in __features_info.txt__).
* __fBodyGyro.std.Z__: The standard deviation of the body angular acceleration in frequency, Z direction (fBodyGyro-std()-Z described in __features_info.txt__).
* __fBodyAccMag.mean__: The average magnitude of the body linear acceleration in frequency (fBodyAccMag-mean() described in __features_info.txt__).
* __fBodyAccMag.std__: The standard deviation in the magnitude of the body linear acceleration in frequency (fBodyAccMag-std() described in __features_info.txt__).
* __fBodyBodyAccJerkMag.mean__: The average magnitude of the body linear acceleration Jerk signal in frequency (fBodyBodyAccJerkMag-mean() described in __features_info.txt__).
* __fBodyBodyAccJerkMag.std__: The standard deviation in the magnitude of the body linear acceleration Jerk signal in frequency (fBodyBodyAccJerkMag-std() described in __features_info.txt__).
* __fBodyBodyGyroMag.mean__: The average magnitude of the body angular acceleration in frequency (fBodyBodyGyroMag-mean() described in __features_info.txt__).
* __fBodyBodyGyroMag.std__: The standard deviation in the magnitude of the body angular acceleration in frequency (fBodyBodyGyroMag-std() described in __features_info.txt__).
* __fBodyBodyGyroJerkMag.mean__: The average magnitude of the body angular acceleration Jerk signal in frequency (fBodyBodyGyroJerkMag-mean() described in __features_info.txt__).
* __fBodyBodyGyroJerkMag.std__: The standard deviation in the magnitude of the body angular acceleration Jerk signal in frequency (fBodyBodyGyroJerkMag-std() described in __features_info.txt__).
* __SubjectID__: Unique subject identifier; this was obtained from the subject\_test.txt and subject\_train.txt files.  Ranges from 1 to 30.
* __Activity__: Label describing the activity conducted when the measurement was taken. The codes for these activities (valued 1 through 6) were obtained from y\_test.txt and y\_train.txt.  These values were converted a textual description; the links between the codes and their descriptions was obtained from activity\_labels.txt.  These files are described in __StudySummary.txt__.  Potential values include:
    + STANDING
    + SITTING
    + LAYING
    + WALKING
    + WALKING_DOWNSTAIRS
    + WALKING_UPSTAIRS
* __TestTrain__: An indicator describing whether the record was originally from the test or training dataset.  Potential values include:
    + Test
    + Train
  
  
# Description of dfsummary
The __dfsummary.txt__ file was constructed by beginning with __dffull.txt__.  The _TestTrain_ variable was dropped from the dataset; then, for each subject, the remaining features were averaged within each activity level.  That is, this dataset contains 6 records per subject, each record corresponding to the average feature value for a particular activity.  The variables are summarized below:

* __SubjectID__: Unique subject identifier.  Ranges from 1 to 30.
* __Activity__: Label describing the activity conducted when the measurement was taken. Potential values include:
    + STANDING
    + SITTING
    + LAYING
    + WALKING
    + WALKING_DOWNSTAIRS
    + WALKING_UPSTAIRS
* __M.tBodyAcc.mean.X__: Average of the feature tBodyAcc.mean.X from the __dffull.txt__ dataset described above.
* __M.tBodyAcc.mean.Y__: Average of the feature tBodyAcc.mean.Y from the __dffull.txt__ dataset described above.
* __M.tBodyAcc.mean.Z__: Average of the feature tBodyAcc.mean.Z from the __dffull.txt__ dataset described above.
* __M.tBodyAcc.std.X__: Average of the feature tBodyAcc.std.X from the __dffull.txt__ dataset described above.
* __M.tBodyAcc.std.Y__: Average of the feature tBodyAcc.std.Y from the __dffull.txt__ dataset described above.
* __M.tBodyAcc.std.Z__: Average of the feature tBodyAcc.std.Z from the __dffull.txt__ dataset described above.
* __M.tGravityAcc.mean.X__: Average of the feature tGravityAcc.mean.X from the __dffull.txt__ dataset described above.
* __M.tGravityAcc.mean.Y__: Average of the feature tGravityAcc.mean.Y from the __dffull.txt__ dataset described above.
* __M.tGravityAcc.mean.Z__: Average of the feature tGravityAcc.mean.Z from the __dffull.txt__ dataset described above.
* __M.tGravityAcc.std.X__: Average of the feature tGravityAcc.std.X from the __dffull.txt__ dataset described above.
* __M.tGravityAcc.std.Y__: Average of the feature tGravityAcc.std.Y from the __dffull.txt__ dataset described above.
* __M.tGravityAcc.std.Z__: Average of the feature tGravityAcc.std.Z from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerk.mean.X__: Average of the feature tBodyAccJerk.mean.X from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerk.mean.Y__: Average of the feature tBodyAccJerk.mean.Y from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerk.mean.Z__: Average of the feature tBodyAccJerk.mean.Z from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerk.std.X__: Average of the feature tBodyAccJerk.std.X from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerk.std.Y__: Average of the feature tBodyAccJerk.std.Y from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerk.std.Z__: Average of the feature tBodyAccJerk.std.Z from the __dffull.txt__ dataset described above.
* __M.tBodyGyro.mean.X__: Average of the feature tBodyGyro.mean.X from the __dffull.txt__ dataset described above.
* __M.tBodyGyro.mean.Y__: Average of the feature tBodyGyro.mean.Y from the __dffull.txt__ dataset described above.
* __M.tBodyGyro.mean.Z__: Average of the feature tBodyGyro.mean.Z from the __dffull.txt__ dataset described above.
* __M.tBodyGyro.std.X__: Average of the feature tBodyGyro.std.X from the __dffull.txt__ dataset described above.
* __M.tBodyGyro.std.Y__: Average of the feature tBodyGyro.std.Y from the __dffull.txt__ dataset described above.
* __M.tBodyGyro.std.Z__: Average of the feature tBodyGyro.std.Z from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerk.mean.X__: Average of the feature tBodyGyroJerk.mean.X from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerk.mean.Y__: Average of the feature tBodyGyroJerk.mean.Y from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerk.mean.Z__: Average of the feature tBodyGyroJerk.mean.Z from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerk.std.X__: Average of the feature tBodyGyroJerk.std.X from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerk.std.Y__: Average of the feature tBodyGyroJerk.std.Y from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerk.std.Z__: Average of the feature tBodyGyroJerk.std.Z from the __dffull.txt__ dataset described above.
* __M.tBodyAccMag.mean__: Average of the feature tBodyAccMag.mean from the __dffull.txt__ dataset described above.
* __M.tBodyAccMag.std__: Average of the feature tBodyAccMag.std from the __dffull.txt__ dataset described above.
* __M.tGravityAccMag.mean__: Average of the feature tGravityAccMag.mean from the __dffull.txt__ dataset described above.
* __M.tGravityAccMag.std__: Average of the feature tGravityAccMag.std from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerkMag.mean__: Average of the feature tBodyAccJerkMag.mean from the __dffull.txt__ dataset described above.
* __M.tBodyAccJerkMag.std__: Average of the feature tBodyAccJerkMag.std from the __dffull.txt__ dataset described above.
* __M.tBodyGyroMag.mean__: Average of the feature tBodyGyroMag.mean from the __dffull.txt__ dataset described above.
* __M.tBodyGyroMag.std__: Average of the feature tBodyGyroMag.std from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerkMag.mean__: Average of the feature tBodyGyroJerkMag.mean from the __dffull.txt__ dataset described above.
* __M.tBodyGyroJerkMag.std__: Average of the feature tBodyGyroJerkMag.std from the __dffull.txt__ dataset described above.
* __M.fBodyAcc.mean.X__: Average of the feature fBodyAcc.mean.X from the __dffull.txt__ dataset described above.
* __M.fBodyAcc.mean.Y__: Average of the feature fBodyAcc.mean.Y from the __dffull.txt__ dataset described above.
* __M.fBodyAcc.mean.Z__: Average of the feature fBodyAcc.mean.Z from the __dffull.txt__ dataset described above.
* __M.fBodyAcc.std.X__: Average of the feature fBodyAcc.std.X from the __dffull.txt__ dataset described above.
* __M.fBodyAcc.std.Y__: Average of the feature fBodyAcc.std.Y from the __dffull.txt__ dataset described above.
* __M.fBodyAcc.std.Z__: Average of the feature fBodyAcc.std.Z from the __dffull.txt__ dataset described above.
* __M.fBodyAccJerk.mean.X__: Average of the feature fBodyAccJerk.mean.X from the __dffull.txt__ dataset described above.
* __M.fBodyAccJerk.mean.Y__: Average of the feature fBodyAccJerk.mean.Y from the __dffull.txt__ dataset described above.
* __M.fBodyAccJerk.mean.Z__: Average of the feature fBodyAccJerk.mean.Z from the __dffull.txt__ dataset described above.
* __M.fBodyAccJerk.std.X__: Average of the feature fBodyAccJerk.std.X from the __dffull.txt__ dataset described above.
* __M.fBodyAccJerk.std.Y__: Average of the feature fBodyAccJerk.std.Y from the __dffull.txt__ dataset described above.
* __M.fBodyAccJerk.std.Z__: Average of the feature fBodyAccJerk.std.Z from the __dffull.txt__ dataset described above.
* __M.fBodyGyro.mean.X__: Average of the feature fBodyGyro.mean.X from the __dffull.txt__ dataset described above.
* __M.fBodyGyro.mean.Y__: Average of the feature fBodyGyro.mean.Y from the __dffull.txt__ dataset described above.
* __M.fBodyGyro.mean.Z__: Average of the feature fBodyGyro.mean.Z from the __dffull.txt__ dataset described above.
* __M.fBodyGyro.std.X__: Average of the feature fBodyGyro.std.X from the __dffull.txt__ dataset described above.
* __M.fBodyGyro.std.Y__: Average of the feature fBodyGyro.std.Y from the __dffull.txt__ dataset described above.
* __M.fBodyGyro.std.Z__: Average of the feature fBodyGyro.std.Z from the __dffull.txt__ dataset described above.
* __M.fBodyAccMag.mean__: Average of the feature fBodyAccMag.mean from the __dffull.txt__ dataset described above.
* __M.fBodyAccMag.std__: Average of the feature fBodyAccMag.std from the __dffull.txt__ dataset described above.
* __M.fBodyBodyAccJerkMag.mean__: Average of the feature fBodyBodyAccJerkMag.mean from the __dffull.txt__ dataset described above.
* __M.fBodyBodyAccJerkMag.std__: Average of the feature fBodyBodyAccJerkMag.std from the __dffull.txt__ dataset described above.
* __M.fBodyBodyGyroMag.mean__: Average of the feature fBodyBodyGyroMag.mean from the __dffull.txt__ dataset described above.
* __M.fBodyBodyGyroMag.std__: Average of the feature fBodyBodyGyroMag.std from the __dffull.txt__ dataset described above.
* __M.fBodyBodyGyroJerkMag.mean__: Average of the feature fBodyBodyGyroJerkMag.mean from the __dffull.txt__ dataset described above.
* __M.fBodyBodyGyroJerkMag.std__: Average of the feature fBodyBodyGyroJerkMag.std from the __dffull.txt__ dataset described above.