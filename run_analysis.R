
# Download file and load the data
setwd("..")
setwd('./Desktop')
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile="projData.zip", method="internal")
unzip("projData.zip")
file.remove("projData.zip")

setwd('./UCI HAR Dataset')
setwd('./train')
X_train <- read.table("X_train.txt", header=FALSE)
y_train <- read.table("y_train.txt", head=FALSE)
subject_train <- read.table('subject_train.txt', head=FALSE)

setwd('..')
featurenames <- read.table('features.txt',header=FALSE)
activitylabels <- read.table('activity_labels.txt', header=FALSE)

setwd('./test')
X_test <- read.table('X_test.txt', header=FALSE)
y_test <- read.table('y_test.txt', header=FALSE)
subject_test <- read.table('subject_test.txt', head=FALSE)

# Merge data, extract mean, std of measurements, 
# and label variable names based on descriptive variable names
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject_id <- rbind(subject_train, subject_test)

feature <- as.character(featurenames[[2]])
feature <- gsub("\\(|)","",feature)
feature <- gsub("-", "_",feature)
colnames(X) <- feature


ind <- grep('mean|std', feature)
X_sel <- X[,ind]
HARdata <- cbind(subject_id, y, X_sel)

colnames(HARdata)[1]  <- 'subjectID'
colnames(HARdata)[2] <- 'activity'

# label activities based on descriptive activity names
HARdata$activity <- factor(HARdata$activity, levels=activitylabels[[1]],
                           labels=as.character(activitylabels[[2]]))

# Create a independent tidy dataset with 
# the average of each variable for each activity and each subject. 
library(dplyr)
newdata <- group_by(HARdata, subjectID, activity) %>% summarise_each(funs(mean))



# Save dataset
setwd('..')
write.table(newdata, file="HAR_mean.txt", sep=" ", row.names=FALSE)

