# GettingAndCleaningData_WEEK4_Assignement
GettingAndCleaningData_WEEK4_Assignement

Files in this repo:

README.md				Discribes filis in this repo
run_analysis.R			R script that performs some cleaning on the Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
CodeBook.md				Experiment and variables description
AverageDataSet.txt		Tidy dataset from run_analysis.R



run_analysis.R 

This files performs the following steps:

1.Read files from the Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
2.Merges the training and the test sets to create one data set
3.Appropriately labels the data set with descriptive variable names
4.Extracts only the measurements on the mean and standard deviation for each measurement
5.Uses descriptive activity names to name the activities in the data set
6.Creates a second, independent tidy data set with the average of each variable for each activity and each subject
7.Remove no necessary variables
8.WRITE outpu as a txt file