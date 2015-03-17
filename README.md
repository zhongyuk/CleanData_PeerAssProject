# CleanData_PeerAssProject

### This is a peer assessment project repo for Coursera online couse - Getting and Cleaning Data
The run_analysis.R script uses a machine learning dataset collected from the accelerometers from the Samsung Galaxy S smartphone,
to form a lower dimensional (less variables) tidy dataset - HAR_mean.txt

run_analysis.R takes the data set downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip;
and gives a lower dimension (less variables) dataset as output.
More details about the input dataset can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

run_analysis.R can be executed successfully under R/Rstudio's default work directory after launching (C:/users/username/Documents). 
If the work directory is different than the default work directory, it can either change to the defualt directory through setwd("C:users/username/Documents"),
or comment out the setwd("..") line, to execute the script under any desired work directory

The run_analysis.R script's functionality is stated as following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set - HAR_mean.txt, with the average of each variable for each activity and each subject.

More details about the variables are explained in the Code_Book.txt file.
