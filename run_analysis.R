# Load necessary libraries
library(plyr)

# Get and unzip .zip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
subDir <- "data"
destfile="./data/dataset.zip"  

if (!file.exists(subDir)){
    dir.create(subDir)
}

download.file(url ,destfile,method="curl") 
unzip(zipfile = destfile, exdir = subDir)
files_path <- "./data/UCI HAR Dataset"

# Get test data and bind subject and activity information
test_data  <- read.table(file.path(files_path, "test/X_test.txt"),header = FALSE)
Y_test  <- read.table(file.path(files_path, "test/Y_test.txt" ),header = FALSE)
subject_test  <- read.table(file.path(files_path, "test/subject_test.txt"),header = FALSE)
test_data <- cbind(test_data,Y_test,subject_test)

# Get train data and bind subject and activity information
train_data <- read.table(file.path(files_path, "train/X_train.txt"),header = FALSE)
Y_train <- read.table(file.path(files_path, "train/Y_train.txt"),header = FALSE)
subject_train <- read.table(file.path(files_path, "train/subject_train.txt"),header = FALSE)
train_data <- cbind(train_data,Y_train,subject_train)

# Bind train and test data sets
data <- rbind(train_data,test_data)

# Load feature labels and improve its understanding
features <- as.character(read.table(file.path(files_path, "features.txt"),header = FALSE)[,2])
features <- gsub("^t", "time", features)
features <- gsub("^f", "frequency", features)
features <- gsub("Acc", "Accelerometer", features)
features <- gsub("Gyro", "Gyroscope", features)

# Link labels to data set features
colnames(data) <- c(features, "activity", "subject")

# Subset to get requested variables
data<-subset(data,select=grep("(-(mean|std)\\(\\))|activity|subject",colnames(data),value = TRUE))

# Link activity factors with its labels
levels(data$activity) <- as.character(read.table(file.path(files_path, "activity_labels.txt"),header = FALSE)[,2])

# Get tidy of dataset by activity and subject
data2 <- aggregate(. ~subject + activity, data, mean)