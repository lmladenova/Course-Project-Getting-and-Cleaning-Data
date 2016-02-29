# For the script to work the Samsung data should be in your working directory
# The dataset can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


# Loading the files for the test subset
test_subject_id <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")

#Concanating the tables in one to form the TEST subset data
test <- cbind(test_subject_id, test_activity, test_data)



#Loading the files for the train subset
train_subject_id <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")

#Concanating the tables in one to form the TRAIN subset data
train <- cbind(train_subject_id, train_activity, train_data)


#Merging the TEST and TRAIN subsets
raw <- rbind(test, train)

#Loading the file with the variable names and extracting the names
var_init <- read.table("./UCI HAR Dataset/features.txt")

names_var_init <- grep(".*", var_init[,2], value = TRUE)
index_meanstd <- grep("mean|std", names_var_init, value = TRUE)

# Assigning column names
colnames(raw) <- c("subject_id", "activity", names_var_init)

#Subsetting only the data for the mean and standart deviation of the measurements
tidy <- raw[, grep("subject_id|activity|mean|std",colnames(raw))]

#Naming the activities in the dataset
tidy$activity <- as.factor(tidy$activity)
levels(tidy$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")


#Desciptive names on the variables
for (i in 1:length(names(tidy))) {
        names(tidy)[i] <- gsub("^t", "Time", names(tidy)[i])
        names(tidy)[i] <- gsub("^f", "Frequency", names(tidy)[i])
        names(tidy)[i] <- gsub("(-mean\\())", "Mean", names(tidy)[i])
        names(tidy)[i] <- gsub("(-std\\())", "StandardDeviation", names(tidy)[i])
        names(tidy)[i] <- gsub("Acc", "Accelerator", names(tidy)[i])
        names(tidy)[i] <- gsub("Gyro", "Gyroscope", names(tidy)[i])
        names(tidy)[i] <- gsub("BodyBody", "Body", names(tidy)[i])
        names(tidy)[i] <- gsub("Jerk", "Jerksignals", names(tidy)[i])
        names(tidy)[i] <- gsub("Mag", "Magnitude", names(tidy)[i])
        names(tidy)[i] <- gsub("-X", "Xaxis", names(tidy)[i])
        names(tidy)[i] <- gsub("-Y", "Yaxis", names(tidy)[i])
        names(tidy)[i] <- gsub("-Z", "Zaxis", names(tidy)[i])
        names(tidy)[i] <- gsub("(-meanFreq\\())", "MeanFrequency", names(tidy)[i])
        }


#calculating the mean for each measurement across each subject and each activity, and saving the result in a separate dataframe
averagetidy <- aggregate(tidy[, 3:81], by=list(tidy$subject_id, tidy$activity), FUN = mean, na.rm = TRUE)
#renaming the grouping columns

        names(averagetidy)[1] <- sub("Group.1", "subject_id", names(averagetidy)[1])
        names(averagetidy)[2] <- sub("Group.2", "activity", names(averagetidy)[2])
#adding "Average" at the end of the measurement variables to denote that these are different from the measurement variables in the initial dataset      
        for (i in 3:length(names(tidy))){
                names(averagetidy)[i] <- gsub("^", "Average", names(tidy)[i])}
#writing the averagetidy table
        write.table(averagetidy, file = "averagetidy.txt", row.names = FALSE)
        
#the resulting table is in wide form, if desired it can be turned into long table by following the next steps:
#install.packages("reshape2") ## if the package is not already installed
#library(reshape2) ##load the reshape2 package
#long <- melt(averagetidy, c("subject_id", "activity"))
        
