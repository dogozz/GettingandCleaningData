## Codebook 
The present codebook decribe the variables, the data, and any transformations or work that were performed to clean up the data.

The original data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Feature Selection (new_data)
To create the new data set were extracted only the measurements on the mean and standard deviation for each measurement listed on the "features.txt" provided in the original dataset, the extracted measures are:

| | ||
|:--------------------------------|:---------------------------- |:--------------------------  |
| [1] "tBodyAcc-mean()-X"         |"tBodyAcc-mean()-Y"           |"tBodyAcc-mean()-Z"          |
| [4] "tBodyAcc-std()-X"          |"tBodyAcc-std()-Y"            |"tBodyAcc-std()-Z"           |
|[7] "tGravityAcc-mean()-X"       |"tGravityAcc-mean()-Y"        |"tGravityAcc-mean()-Z"       |       
|[10] "tGravityAcc-std()-X"       |"tGravityAcc-std()-Y"         |"tGravityAcc-std()-Z"        |       
|[13] "tBodyAccJerk-mean()-X"     |"tBodyAccJerk-mean()-Y"       |"tBodyAccJerk-mean()-Z"      |      
|[16] "tBodyAccJerk-std()-X"      |"tBodyAccJerk-std()-Y"        |"tBodyAccJerk-std()-Z"       |       
|[19] "tBodyGyro-mean()-X"        |"tBodyGyro-mean()-Y"          |"tBodyGyro-mean()-Z"         |
|[22] "tBodyGyro-std()-X"         |"tBodyGyro-std()-Y"           |"tBodyGyro-std()-Z"          |      
|[25] "tBodyGyroJerk-mean()-      |"tBodyGyroJerk-mean()-Y"      |"tBodyGyroJerk-mean()-Z"     |
|[28] "tBodyGyroJerk-std()-X"     |"tBodyGyroJerk-std()-Y"       |"tBodyGyroJerk-std()-Z"      |   
|[31] "tBodyAccMag-mean()"        |"tBodyAccMag-std()"           |"tGravityAccMag-mean()"      |   
|[34] "tGravityAccMag-std()"      |"tBodyAccJerkMag-mean()"      |"tBodyAccJerkMag-std()"      |    
|[37] "tBodyGyroMag-mean()"       |"tBodyGyroMag-std()"          |"tBodyGyroJerkMag-mean()"    |  
|[40] "tBodyGyroJerkMag-std()"    |"fBodyAcc-mean()-X"           |"fBodyAcc-mean()-Y"          | 
|[43] "fBodyAcc-mean()-Z"         |"fBodyAcc-std()-X"            |"fBodyAcc-std()-Y"           |  
|[46] "fBodyAcc-std()-Z"          |"fBodyAccJerk-mean()-X"       |"fBodyAccJerk-mean()-Y"      |  
|[49] "fBodyAccJerk-mean()-Z"     |"fBodyAccJerk-std()-X"        |"fBodyAccJerk-std()-Y"       |  
|[52] "fBodyAccJerk-std()-Z"      |"fBodyGyro-mean()-X"          |"fBodyGyro-mean()-Y"         |  
|[55] "fBodyGyro-mean()-Z"        |"fBodyGyro-std()-X"           |"fBodyGyro-std()-Y"          |  
|[58] "fBodyGyro-std()-Z"         |"fBodyAccMag-mean()"          |"fBodyAccMag-std()"          |  
|[61] "fBodyBodyAccJerkMag-mean()"|"fBodyBodyAccJerkMag-std()"   |"fBodyBodyGyroMag-mean()"    |   
|[64] "fBodyBodyGyroMag-std()"    |"fBodyBodyGyroJerkMag-mean()" |"fBodyBodyGyroJerkMag-std()" |


## Activity (new_data)
Descriptive activity names provided by 'activity_labels.txt' were used to link the class labels with their activitity name in the new data set.
activity - The label of the activity performed when the corresponding measurements were taken:   

  Value      Activity          
    1        WALKING           
    2        WALKING_UPSTAIRS  
    3        WALKING_DOWNSTAIRS
    4        SITTING           
    5        STANDING          
    6        LAYING            
