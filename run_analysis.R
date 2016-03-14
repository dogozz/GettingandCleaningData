## Instrucciones
## The purpose of this project is to demonstrate your ability to collect, work
## with, and clean a data set.Here are the data for the project:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20
##         Dataset.zip 

## You should create one R script called run_analysis.R that does the following. 
## 1.Merges the training and the test sets to create one data set.
## 2.Extracts only the measurements on the mean and standard deviation for each
##   measurement. 
## 3.Uses descriptive activity names to name the activities in the data set
## 4.Appropriately labels the data set with descriptive variable names. 
## 5.From the data set in step 4, creates a second, independent tidy data set with
##   the average of each variable for each activity and each subject.

## > setwd("C:/coursera/finalproject")
## > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%
##                2FUCI%20HAR%20Dataset.zip", destfile = "c:/coursera/
##                finalproject/dataset.zip")
## > unzip("dataset.zip")
## > list.files()
##   [1] "dataset.zip"     "finalscript.R"   "UCI HAR Dataset"
## > setwd("C:/coursera/finalproject/UCI HAR Dataset")
## > list.files()
##   [1] "activity_labels.txt" "features.txt"  "features_info.txt"   "README.txt"         
##   [5] "test"                "train"
##   
##   'features_info.txt': Shows information about the variables used on the feature vector.
##   'features.txt': List of all features.
##   'activity_labels.txt': Links the class labels with their activity name.
##    1 WALKING
##    2 WALKING_UPSTAIRS
##    3 WALKING_DOWNSTAIRS
##    4 SITTING
##    5 STANDING
##    6 LAYING

## > list.files("C:/coursera/finalproject/UCI HAR Dataset/test")
##   [1] "Inertial Signals" "subject_test.txt" "X_test.txt"       "y_test.txt

## > list.files("C:/coursera/finalproject/UCI HAR Dataset/train")
##   [1] "Inertial Signals"  "subject_train.txt" "X_train.txt"    "y_train.txt" 

## > setwd("C:/coursera/finalproject/UCI HAR Dataset/")
## The Dataset (/test):                 The Dataset (/train):
## "Inertial Signals":                  "Inertial Signals":
##  [1] "body_acc_x_test.txt"            [1] "body_acc_x_train.txt"
##  [2] "body_acc_y_test.txt"            [2] "body_acc_y_train.txt" 
##  [3] "body_acc_z_test.txt"            [3] "body_acc_z_train.txt"
##  [4] "body_gyro_x_test.txt"           [4] "body_gyro_x_train.txt"
##  [5] "body_gyro_y_test.txt"           [5] "body_gyro_y_train.txt"
##  [6] "body_gyro_z_test.txt"           [6] "body_gyro_z_train.txt"
##  [7] "total_acc_x_test.txt"           [7] "total_acc_x_train.txt"
##  [8] "total_acc_y_test.txt"           [8] "total_acc_y_train.txt"
##  [9] "total_acc_z_test.txt"           [9] "total_acc_z_train.txt"

## "subject_test.txt"                    "subject_train.txt"
## "X_test.txt"                          "X_train.txt" 
## "y_test.txt"                          "y_train.txt"

## Downloading Datasets
if (!file.exists("data")){
        dir.create("data")
        }

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/UCI_HAR_Dataset.zip")
unzip("./data/UCI_HAR_Dataset.zip", exdir = "data")

## Reading data to merge
##
## Dataset "test" : "subject_test.txt" , "x_test.txt", "y_test"
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")

## Dataset "train" : "subject_train.txt" , "x_train.txt", "y_train"
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")

## Combining Test and Training sets.
## "subject_test" & "subject_train"
subject_merged <- rbind(subject_test, subject_train)

## "x_test" & "x_train"
x_merged <- rbind(x_test, x_train)

## "y_test" & "y_train"
y_merged <- rbind(y_test, y_train)

## Matching name features and measurements
## x_merged & "features,txt"
features <- read.table("./data/UCI HAR Dataset/features.txt")
names(x_merged) <- features$V2

## Extracting the measurements on the mean and standard deviation
mean_std <- grepl("mean\\(\\)", names(x_merged)) | grepl("std\\(\\)", names(x_merged))
x_merged <- x_merged[, mean_std]

## Uses descriptive activity names to name the activities in the data set
## matching the proper activities labels
## y_merged & "activity_labels.txt"
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
y_merged[,1] <- activities[y_merged[,1],2]
names(y_merged) <- "activity"  ## Rename V1 column name  to a proper one

## Renaming "subject_merged" column name to a proper one
names(subject_merged) <- "subject"

## Merging the data sets into one
new_data <- cbind(x_merged, y_merged, subject_merged)

## Creating a second tidy data set with the average of each variable for each
## activity and subject
library(plyr)
new_data2 <- ddply(new_data, .(subject, activity), function(x) colMeans(x[,1:66]))

## Saving new_data2 in a txt file.
write.table(new_data2, "average.txt", row.names=FALSE)
