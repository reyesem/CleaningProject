# CleaningProject Summary
This project is a requirement for the "Getting and Cleaning Data" course within Coursera Data Science Specialization.

The project entails combining a training and test dataset from a study.  The study used a smartphone to record a variety of metrics on a set of subjects while they performed six pre-specified activities.  After merging the two datasets, a subset of the variables are retained and the activity labels are cleaned.  

A secondary dataset which summarizes the key variables for each subject, categorized by the activity completed, is constructed.


# Description of Files
There are several files useful in understanding the data; many of these files were taken from the source of the data ([UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)), and have been appropriately indicated below.

* __CodeBook.md__: A description of the steps taken in deriving the dffull and dfsummary datasets (in the run_analysis.R file) as well as the variable descriptions.
* __dffull.txt__: Merges the test and training data so that data from each of the 30 subjects is in a single dataset.  Only the features which are means and standard deviations computed from the original raw measurements are retained.  The activity labels and subject identifiers have been included.
* __dfsummary.txt__: Beginning with the full dataset (df.full), the average of each feature within each activity is computed for each subject.  Specifically, there are 6 records per subject, one for each activity level displaying the mean feature value.
* __features_info.txt__: A file from the UCI repository regarding the original features available.  The features representing the collected data are discussed as well as features derived from these signals, which include the mean and standard deviation.  These are the features retained in our dffull dataset.
* __StudySummary.txt__: The original README file from the UCI repository regarding the study conducted.  This summarizes the data collection and original datasets available.
* __run_analysis.R__: Constructs two datasets dffull and dfsummary, described below.  Each of these are derived from the original test and training datasets available from the initial study.