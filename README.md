Getting and Cleaning Data
========================================================
Unzip the source file to a folder 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Set the Working directory to the "UCI HAR Dataset" folder that is the same one that you unzipped into

Create combination of the training and the test sets of the X_Train data 

create a combination of the subjects training and test set 

create the combination of the Y_train and and y_test data set

Pull out the measurements that are the mean and standard deviation for each measurement

Make all the names lower case only

Get the descriptive activity names so that the activities can be named in the data set:

walking
walkingupstairs
walkingdownstairs
sitting
standing
laying

Apply the labels to the data set with the descriptive activity names.

Create the complete cleaned data set with cbind

Export the tidy data set with the average of each variable for each activity and each subject

All attributes and activity names are converted to lower case, underscores and brackets () are removed.