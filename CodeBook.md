#Code Book       
========================================================
1.      Unziped the source file to a folder 
2.	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
3.	Set the Working directory to the "UCI HAR Dataset" folder that is the same one that you unzipped into
4.	Created combination of the training and the test sets of the X_Train data 
5.	created a combination of the subjects training and test set 
6.	created the combination of the Y_train and and y_test data set
7.	Pulled out the measurements that are the mean and standard deviation for each measurement
8.	Made all the names lower case only
9.	The descriptive activity names so that the activities can be named in the data set:
        a.	walking
        b.	walkingupstairs
        c.	walkingdownstairs
        d.	sitting
        e.	standing
        f.	laying
10.	Applied the labels to the data set with the descriptive activity names.
11.	Created the complete cleaned data set with cbind
12.	Exported the tidy data set with the average of each variable for each activity and each subject
13.	All attributes and activity names are converted to lower case, underscores and brackets () are removed.

Attributes

 [1] "tbodyaccmeanx"            "tbodyaccmeany"           
 [3] "tbodyaccmeanz"            "tbodyaccstdx"             "tbodyaccstdy"             "tbodyaccstdz"            
 [7] "tgravityaccmeanx"         "tgravityaccmeany"         "tgravityaccmeanz"         "tgravityaccstdx"         
[11] "tgravityaccstdy"          "tgravityaccstdz"          "tbodyaccjerkmeanx"        "tbodyaccjerkmeany"       
[15] "tbodyaccjerkmeanz"        "tbodyaccjerkstdx"         "tbodyaccjerkstdy"         "tbodyaccjerkstdz"        
[19] "tbodygyromeanx"           "tbodygyromeany"           "tbodygyromeanz"           "tbodygyrostdx"           
[22] "tbodygyrostdy"            "tbodygyrostdz"            "tbodygyrojerkmeanx"       "tbodygyrojerkmeany"      
[26] "tbodygyrojerkmeanz"       "tbodygyrojerkstdx"        "tbodygyrojerkstdy"        "tbodygyrojerkstdz"       
[27] "tbodyaccmagmean"          "tbodyaccmagstd"           "tgravityaccmagmean"       "tgravityaccmagstd"       
[31] "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"       "tbodygyromagmean"         "tbodygyromagstd"         
[35] "tbodygyrojerkmagmean"     "tbodygyrojerkmagstd"      "fbodyaccmeanx"            "fbodyaccmeany"           
[39] "fbodyaccmeanz"            "fbodyaccstdx"             "fbodyaccstdy"             "fbodyaccstdz"            
[43] "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"        "fbodyaccjerkmeanz"        "fbodyaccjerkstdx"        
[47] "fbodyaccjerkstdy"         "fbodyaccjerkstdz"         "fbodygyromeanx"           "fbodygyromeany"          
[51] "fbodygyromeanz"           "fbodygyrostdx"            "fbodygyrostdy"            "fbodygyrostdz"           
[55] "fbodyaccmagmean"          "fbodyaccmagstd"           "fbodybodyaccjerkmagmean"  "fbodybodyaccjerkmagstd"  
[59] "fbodybodygyromagmean"     "fbodybodygyromagstd"      "fbodybodygyrojerkmagmean" "fbodybodygyrojerkmagstd" 


##Activity Labels

WALKING (value 1)
WALKING_UPSTAIRS (value 2)
WALKING_DOWNSTAIRS (value 3)
SITTING (value 4)
STANDING (value 5)
LAYING (value 6)


```

