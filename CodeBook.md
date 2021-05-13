Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

#############################################################################
#AverageDataSett.txt average the above features for each Activity an subject#
#Below The variables in AverageDataSett.txt##################################
#############################################################################

"Activity" 						:Activity: 1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING
"activitiesNum" 				:Activity number: 1, 2, 3, 4, 5, 6 
"subject" 						:Subject: 1 to 30
"tBodyAcc-mean()-X" 			:Time Body Acceleration mean in X                                         averaged for each Activity and subject
"tBodyAcc-mean()-Y" 			:Time Body Acceleration mean in Y                                         averaged for each Activity and subject
"tBodyAcc-mean()-Z" 			:Time Body Acceleration mean in Z                                         averaged for each Activity and subject
"tBodyAcc-std()-X"  			:Time Body Acceleration STD in X                                          averaged for each Activity and subject
"tBodyAcc-std()-Y"  			:Time Body Acceleration STD in Y                                          averaged for each Activity and subject
"tBodyAcc-std()-Z"  			:Time Body Acceleration STD in Z                                          averaged for each Activity and subject
"tGravityAcc-mean()-X" 			:Time Gravity Acceleration mean in X                                      averaged for each Activity and subject
"tGravityAcc-mean()-Y"  		:Time Gravity Acceleration mean in Y                                      averaged for each Activity and subject
"tGravityAcc-mean()-Z"  		:Time Gravity Acceleration mean in Z                                      averaged for each Activity and subject
"tGravityAcc-std()-X"  			:Time Gravity Acceleration STD in X                                       averaged for each Activity and subject
"tGravityAcc-std()-Y"  			:Time Gravity Acceleration STD in Y                                       averaged for each Activity and subject
"tGravityAcc-std()-Z"  			:Time Gravity Acceleration STD in Z                                       averaged for each Activity and subject
"tBodyAccJerk-mean()-X" 		:Time body Acceleration Jerk mean in X                                    averaged for each Activity and subject
"tBodyAccJerk-mean()-Y"			:Time body Acceleration Jerk mean in Y  		                          averaged for each Activity and subject
"tBodyAccJerk-mean()-Z" 		:Time body Acceleration Jerk mean in Z                                    averaged for each Activity and subject
"tBodyAccJerk-std()-X" 			:Time body Acceleration Jerk STD in X                                     averaged for each Activity and subject
"tBodyAccJerk-std()-Y"  		:Time body Acceleration Jerk STD in Y                                     averaged for each Activity and subject
"tBodyAccJerk-std()-Z"  		:Time body Acceleration Jerk STD in Z                                     averaged for each Activity and subject
"tBodyGyro-mean()-X" 			:Time Body Angular velocity mean in X                                     averaged for each Activity and subject
"tBodyGyro-mean()-Y"            :Time Body Angular velocity mean in Y                                     averaged for each Activity and subject
"tBodyGyro-mean()-Z"            :Time Body Angular velocity mean in Z                                     averaged for each Activity and subject
"tBodyGyro-std()-X"             :Time Body Angular velocity STD in X                                      averaged for each Activity and subject
"tBodyGyro-std()-Y"             :Time Body Angular velocity STD in Y                                      averaged for each Activity and subject
"tBodyGyro-std()-Z"             :Time Body Angular velocity STD in Z                                      averaged for each Activity and subject
"tBodyGyroJerk-mean()-X" 		:Time Body Angular acceleration mean in X                                 averaged for each Activity and subject
"tBodyGyroJerk-mean()-Y"        :Time Body Angular acceleration mean in Y                                 averaged for each Activity and subject
"tBodyGyroJerk-mean()-Z"        :Time Body Angular acceleration mean in Z                                 averaged for each Activity and subject
"tBodyGyroJerk-std()-X"         :Time Body Angular acceleration STD in X                                  averaged for each Activity and subject
"tBodyGyroJerk-std()-Y"         :Time Body Angular acceleration STD in Y                                  averaged for each Activity and subject
"tBodyGyroJerk-std()-Z"         :Time Body Angular acceleration STD in Z                                  averaged for each Activity and subject
"tBodyAccMag-mean()" 			:Time Body Acceleration Magnitud (Eucleadian Norm) Mean                   averaged for each Activity and subject
"tBodyAccMag-std()" 			:Time Body Acceleration Magnitud (Eucleadian Norm) STD                    averaged for each Activity and subject
"tGravityAccMag-mean()" 		:Time GRavity Acceleration Magnitud (Eucleadian Norm) Mean                averaged for each Activity and subject
"tGravityAccMag-std()"          :Time GRavity Acceleration Magnitud (Eucleadian Norm) STD                 averaged for each Activity and subject
"tBodyAccJerkMag-mean()" 		:Time Body Acceleration Magnitud Jerk(Eucleadian Norm) Mean               averaged for each Activity and subject
"tBodyAccJerkMag-std()"         :Time Body Acceleration Magnitud Jerk(Eucleadian Norm) STD                averaged for each Activity and subject
"tBodyGyroMag-mean()" 			:Time Body angular velciy Magnitud (Eucleadian Norm) Mean                 averaged for each Activity and subject
"tBodyGyroMag-std()"            :Time Body angular velciy Magnitud (Eucleadian Norm) STD                  averaged for each Activity and subject
"tBodyGyroJerkMag-mean()"       :Time Body angular Acceleration Magnitud (Eucleadian Norm) Mean           averaged for each Activity and subject
"tBodyGyroJerkMag-std()"        :Time Body angular Acceleration Magnitud (Eucleadian Norm) STD            averaged for each Activity and subject
"fBodyAcc-mean()-X" 			:fft Body Acceleration mean in X                                          averaged for each Activity and subject
"fBodyAcc-mean()-Y"             :fft Body Acceleration mean in Y                                          averaged for each Activity and subject
"fBodyAcc-mean()-Z"             :fft Body Acceleration mean in Z                                          averaged for each Activity and subject
"fBodyAcc-std()-X"              :fft Body Acceleration STD in X                                           averaged for each Activity and subject
"fBodyAcc-std()-Y"              :fft Body Acceleration STD in Y                                           averaged for each Activity and subject
"fBodyAcc-std()-Z"              :fft Body Acceleration STD in Z                                           averaged for each Activity and subject
"fBodyAcc-meanFreq()-X"         :fft Gravity Acceleration mean in X                                       averaged for each Activity and subject
"fBodyAcc-meanFreq()-Y"         :fft Gravity Acceleration mean in Y                                       averaged for each Activity and subject
"fBodyAcc-meanFreq()-Z"         :fft Gravity Acceleration mean in Z                                       averaged for each Activity and subject
"fBodyAccJerk-mean()-X"         :fft Gravity Acceleration STD in X                                        averaged for each Activity and subject
"fBodyAccJerk-mean()-Y"         :fft Gravity Acceleration STD in Y                                        averaged for each Activity and subject
"fBodyAccJerk-mean()-Z"         :fft Gravity Acceleration STD in Z                                        averaged for each Activity and subject
"fBodyAccJerk-std()-X"          :fft body Acceleration Jerk mean in X                                     averaged for each Activity and subject
"fBodyAccJerk-std()-Y"          :fft body Acceleration Jerk mean in Y  		                              averaged for each Activity and subject
"fBodyAccJerk-std()-Z"          :fft body Acceleration Jerk mean in Z                                     averaged for each Activity and subject
"fBodyAccJerk-meanFreq()-X"     :fft body Acceleration Jerk STD in X                                      averaged for each Activity and subject
"fBodyAccJerk-meanFreq()-Y"     :fft body Acceleration Jerk STD in Y                                      averaged for each Activity and subject
"fBodyAccJerk-meanFreq()-Z"     :fft body Acceleration Jerk STD in Z                                      averaged for each Activity and subject
"fBodyGyro-mean()-X"            :fft Body Angular velocity mean in X                                      averaged for each Activity and subject
"fBodyGyro-mean()-Y"            :fft Body Angular velocity mean in Y                                      averaged for each Activity and subject
"fBodyGyro-mean()-Z"            :fft Body Angular velocity mean in Z                                      averaged for each Activity and subject
"fBodyGyro-std()-X"             :fft Body Angular velocity STD in X                                       averaged for each Activity and subject
"fBodyGyro-std()-Y"             :fft Body Angular velocity STD in Y                                       averaged for each Activity and subject
"fBodyGyro-std()-Z"             :fft Body Angular velocity STD in Z                                       averaged for each Activity and subject
"fBodyGyro-meanFreq()-X"        :fft Body Angular mean frequency in X                                     averaged for each Activity and subject
"fBodyGyro-meanFreq()-Y"        :fft Body Angular mean frequency in Y                                     averaged for each Activity and subject
"fBodyGyro-meanFreq()-Z"        :fft Body Angular mean frequency in Z                                     averaged for each Activity and subject
"fBodyAccMag-mean()"            :fft Body Acceleration Magnitud (Eucleadian Norm) Mean                    averaged for each Activity and subject
"fBodyAccMag-std()"             :fft Body Acceleration Magnitud (Eucleadian Norm) STD                     averaged for each Activity and subject
"fBodyAccMag-meanFreq()"        :fft Body Acceleration Magnitud (Eucleadian Norm) mean frequency          averaged for each Activity and subject
"fBodyBodyAccJerkMag-mean()"    :fft Body Acceleration Jerk Magnitud (Eucleadian Norm) Mean               averaged for each Activity and subject
"fBodyBodyAccJerkMag-std()"     :fft Body Acceleration Jerk Magnitud (Eucleadian Norm) STD                averaged for each Activity and subject
"fBodyBodyAccJerkMag-meanFreq()":fft Body Acceleration Jerk Magnitud (Eucleadian Norm) mean frequency     averaged for each Activity and subject
"fBodyBodyGyroMag-mean()"       :fft Body Angular velocity Magnitud (Eucleadian Norm) Mean                averaged for each Activity and subject
"fBodyBodyGyroMag-std()"        :fft Body Angular velocity Magnitud (Eucleadian Norm) STD                 averaged for each Activity and subject
"fBodyBodyGyroMag-meanFreq()"   :fft Body Angular velocity Magnitud (Eucleadian Norm) mean frequency      averaged for each Activity and subject
"fBodyBodyGyroJerkMag-mean()"   :fft Body Angular Acceleration Magnitud (Eucleadian Norm) Mean            averaged for each Activity and subject
"fBodyBodyGyroJerkMag-std()"    :fft Body Angular Acceleration Magnitud (Eucleadian Norm) STD             averaged for each Activity and subject
"fBodyBodyGyroJerkMag-meanFreq():fft Body Angular Acceleration Magnitud (Eucleadian Norm) mean frequency  averaged for each Activity and subject
   