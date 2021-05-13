
##Read files##
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

  
  
##Merges the training and the test sets to create one data set##
  x_merge<-rbind(x_train,x_test)
  y_merge<-rbind(y_train,y_test)
  subject_merge<-rbind(subject_train,subject_test)
  

##Appropriately labels the data set with descriptive variable names##
  names(x_merge)<-features_names[,2]
    
  
##Extracts only the measurements on the mean and standard deviation for each measurement## 
  feature_idx<-grep("mean|std",features_names[,2])
  x_merge_small<-x_merge[,feature_idx]
  
  
##Uses descriptive activity names to name the activities in the data set##
  ##Merge activities numbers(y_merge) with activities labels (activities_labels)
  y_merge_activitieslabes<-merge(y_merge,activity_labels,by.x = "V1",by.y = "V1",all = TRUE,sort = FALSE)
  ##Create a new column with activities label in x_merge_small
  x_merge_small$activities<-factor(y_merge_activitieslabes[,2])
  x_merge_small$activitiesNum<-factor(y_merge[,1])
  ##Create a new column with subject number label in x_merge_small
  x_merge_small$subject<-factor(subject_merge[,1])
  
  
##creates a second, independent tidy data set with the average of each variable for each activity and each subject##
  library(dplyr)
  x_average<-select(x_merge_small,-activities) %>% group_by(activitiesNum,subject,.drop = TRUE)  %>% summarise_all(mean,na.rm =TRUE)
  x_averagenames<-merge(x_average,activity_labels,by.x = "activitiesNum",by.y = "V1", all.x = TRUE,sort = FALSE)
  x_averagenames<-rename(x_averagenames, Activity = V2)
  x_averagenames<-select(x_averagenames,Activity,everything())
  
  
##Remove no necessary variables
  rm(x_train,y_train,subject_train,x_test,y_test,subject_test,features_names,activity_labels,
     x_merge,y_merge,subject_merge,feature_idx,y_merge_activitieslabes,x_average)
  
  
 ##WRITE txt file
  write.table(x_averagenames,file = "AverageDataSet.txt",row.name = FALSE)
  
