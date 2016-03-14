
## Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.

## Review criteria
1. The submitted data set is tidy. 
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

## You will be required to submit:

1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## The "run_analysis.R" script" does the following:

 1. Create a directory if it doesn't exists.
 2. Download and unzip the dataset in the created working directory.
 3. Read the "test" and "train" datasets: "subject_test.txt" , "x_test.txt", "y_test", "subject_train.txt", "x_train.txt", "y_train".
 4. Combine the "subject", "x" and "y" from both "test" and "train" datasets.
 5. Match the name of each feature and measurement,
 6. Extract the measurements on the mean and standard deviation.
 7. Use descriptive activity names to name the activities in the data set by matching the proper activities labels.
 8. Merge the data sets into new one.
 9. Create a second tidy data set with the average of each variable for each activity and subject.
 10. Call library(plyr).
 11. Save the new_data2 in a txt file.
# Getting_and_Cleaning_Data
