
##Read files

  ##READ ME HERE:Set your working directory as "whereveryourdatais/UCI HAR Dataset"
  #setwd("~/R/Scripts/GettingAndCleaningData/PeerA/UCI HAR Dataset")
  
  #Read training data
  x_train<-read.table("./train/x_train.txt",header = FALSE)
  y_train<-read.table("./train/y_train.txt",header = FALSE)
  subject_train<-read.table("./train/subject_train.txt",header = FALSE)
  
  #Read test data
  x_test<-read.table("./test/x_test.txt",header = FALSE)
  y_test<-read.table("./test/y_test.txt",header = FALSE)
  subject_test<-read.table("./test/subject_test.txt",header = FALSE)
  
  #Read features names
  features_names<-read.table("features.txt",header = FALSE)
  
  #Read activity labels
  activity_labels<-read.table("activity_labels.txt",header = FALSE)

##Merges the training and the test sets to create one data set
  x_merge<-rbind(x_train,x_test)
  y_merge<-rbind(y_train,y_test)
  subject_merge<-rbind(subject_train,subject_test)
