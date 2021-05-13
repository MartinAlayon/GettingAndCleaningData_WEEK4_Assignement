
##Read files

##READ ME HERE:Set your working directory as "whereveryourdatais/UCI HAR Dataset"
#setwd("~/R/Scripts/GettingAndCleaningData/PeerA/UCI HAR Dataset")

x_train<-read.csv("./train/x_train.txt")
y_train<-read.csv("./train/y_train.txt")
subject_train<-read.csv("./train/subject_train.txt")

x_test<-read.csv("./test/x_train.txt")
y_test<-read.csv("./test/y_train.txt")
subject_test<-read.csv("./test/subject_train.txt")



##Merges the training and the test sets to create one data set