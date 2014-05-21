# Source of data for the project:
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

# Create combination of the training and the test sets of the X_Train data 

xtrain <- read.table("train/X_train.txt")
xtest <- read.table("test/X_test.txt")
xtotal <- rbind(xtrain, xtest)

# creates a combination of the subjects training and test set 

subject1 <- read.table("train/subject_train.txt")
subject2 <- read.table("test/subject_test.txt")
stotal <- rbind(subject1, subject2)

#creates the combination of the Y_train and and y_test data set

ytrain <- read.table("train/y_train.txt")
ytest <- read.table("test/y_test.txt")
ytotal <- rbind(ytrain, ytest)

# pull out the measurements that are the mean and standard deviation for each measurement

features <- read.table("features.txt")
gf <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
xtotal <- xtotal[, gf]
names(xtotal) <- features[gf, 2]
names(xtotal) <- gsub("\\(|\\)", "", names(xtotal))

#make all the names lower case only

names(xtotal) <- tolower(names(xtotal))  

# get the descriptive activity names so that I can name the activities in the data set

activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
ytotal[,1] = activities[YTotal[,1], 2]
names(ytotal) <- "activity"

# Apply the labels to the data set with the descriptive activity names.

names(stotal) <- "subject"

#create the complete cleaned data set with cbind
cleaned <- cbind(stotal, ytotal, xtotal)
write.table(cleaned, "cleandata.txt")

# tidy data set with the average of each variable for each activity and each subject.

uniqueSubjects = unique(stotal)[,1]
numsubjects = length(unique(stotal)[,1])
numactivities = length(activities[,1])
numcols = dim(cleaned)[2]
result = cleaned[1:(numsubjects*numactivities), ]

row = 1
for (s in 1:numsubjects) {
        for (a in 1:numactivities) {
                result[row, 1] = uniquesubjects[s]
                result[row, 2] = activities[a, 2]
                tmp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
                result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
                row = row+1
        }
}

#clean the names further by eliminating the - charcters

colnames(result) <- sub("-", "" ,colnames(result),)
colnames(result) <- sub("-", "" ,colnames(result),)



write.table(result, "averagepervariable.txt")

