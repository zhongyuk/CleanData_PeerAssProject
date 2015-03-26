CODE BOOK
======================================
* A quick summary on variable names in HAR_mean.txt

HAR_mean.txt stores both the mean and standard deviation of variables derived from measurements retreived from accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

* A quick summary of steps taken to produce HAR_mean dataset
Step 1
A brief of retreiving time domain variables(the variables with a prefix 't') is explained as following:
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

A brief of retreiving frequency doman variables(the variables with a prefix 'f') is explained as following:
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

Step 2
Estimate a set of variables from the signals retrieved from Step 1 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Step 3
Selecting only the mean and standard deviation estimates out of all the variable pool obtained from Step 2.
The reason of selecting mean and standard deviation estimates are explained as following:
1) Mean and standard deviation are good estimates for the whole signal population, and have many advantages in further statistical inference
2) By only selecting mean and standard deviation estimates, the dataset gets smaller and simplified, reduces potential computational costs.

Step 4
Compute the average of each variable for each subject and each activity.
This step of averaging further reduces the dimension of the dataset, meanwhile provides more insights in terms of studying each subject's activity pattern.

* Variable naming system explanation

[1] subjectID: ID numbers used to identify different subjects who were being measured
[2] activity: A categorical variables indicating subjects' activity status, which contains 6 different levels: WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING.
[3] ~ [81] variables follow below naming system:
 prefix - t : time domain;              unit: certain parameter per unit time (i.e. sec)
        - f : frequency domain;         unit: certain parameter per unit frequency (i.e. Hz)
 BodyAcc    : body acceleration;        unit: meter per sec squares
 GravityAcc : gravity acceleration;     unit: meter per sec squares
 Jerk       : measurements derived from Jerk signals
 Gyro       : measurements derived from gyroscope, associated with angular momentum
 mean       : mean value estimated from the signal (Step 2)
 std        : standard deviation estimated from the signal (Step 2)
 XYZ        : denotes for a particular components in Cartesian Coordinates
 
 ===========================================================================
 [1] subjectID
 [2] activity                      
 [3] tBodyAcc_mean_X
 [4] tBodyAcc_mean_Y
 [5] tBodyAcc_mean_Z
 [6] tBodyAcc_std_X               
 [7] tBodyAcc_std_Y
 [8] tBodyAcc_std_Z
 [9] tGravityAcc_mean_X           
[10] tGravityAcc_mean_Y
[11] tGravityAcc_mean_Z            
[12] tGravityAcc_std_X            
[13] tGravityAcc_std_Y
[14] tGravityAcc_std_Z             
[15] tBodyAccJerk_mean_X          
[16] tBodyAccJerk_mean_Y           
[17] tBodyAccJerk_mean_Z           
[18] tBodyAccJerk_std_X           
[19] tBodyAccJerk_std_Y            
[20] tBodyAccJerk_std_Z            
[21] tBodyGyro_mean_X            
[22] tBodyGyro_mean_Y              
[23] tBodyGyro_mean_Z              
[24] tBodyGyro_std_X              
[25] tBodyGyro_std_Y               
[26] tBodyGyro_std_Z               
[27] tBodyGyroJerk_mean_X         
[28] tBodyGyroJerk_mean_Y          
[29] tBodyGyroJerk_mean_Z          
[30] tBodyGyroJerk_std_X          
[31] tBodyGyroJerk_std_Y           
[32] tBodyGyroJerk_std_Z           
[33] tBodyAccMag_mean           
[34] tBodyAccMag_std               
[35] tGravityAccMag_mean
[36] tGravityAccMag_std           
[37] tBodyAccJerkMag_mean          
[38] tBodyAccJerkMag_std           
[39] tBodyGyroMag_mean           
[40] tBodyGyroMag_std
[41] tBodyGyroJerkMag_mean         
[41] tBodyGyroJerkMag_std         
[43] fBodyAcc_mean_X           
[44] fBodyAcc_mean_Y               
[45] fBodyAcc_mean_Z              
[46] fBodyAcc_std_X                
[47] fBodyAcc_std_Y                
[48] fBodyAcc_std_Z               
[49] fBodyAcc_meanFreq_X           
[50] fBodyAcc_meanFreq_Y           
[51] fBodyAcc_meanFreq_Z          
[52] fBodyAccJerk_mean_X           
[53] fBodyAccJerk_mean_Y           
[54] fBodyAccJerk_mean_Z          
[55] fBodyAccJerk_std_X            
[56] fBodyAccJerk_std_Y            
[57] fBodyAccJerk_std_Z           
[58] fBodyAccJerk_meanFreq_X       
[59] fBodyAccJerk_meanFreq_Y       
[60] fBodyAccJerk_meanFreq_Z      
[61] fBodyGyro_mean_X        
[62] fBodyGyro_mean_Y              
[63] fBodyGyro_mean_Z             
[64] fBodyGyro_std_X               
[65] fBodyGyro_std_Y               
[66] fBodyGyro_std_Z              
[67] fBodyGyro_meanFreq_X          
[68] fBodyGyro_meanFreq_Y          
[69] fBodyGyro_meanFreq_Z         
[70] fBodyAccMag_mean           
[71] fBodyAccMag_std               
[72] fBodyAccMag_meanFreq         
[73] fBodyBodyAccJerkMag_mean      
[74] fBodyBodyAccJerkMag_std       
[75] fBodyBodyAccJerkMag_meanFreq 
[76] fBodyBodyGyroMag_mean   
[77] fBodyBodyGyroMag_std         
[78] fBodyBodyGyroMag_meanFreq    
[79] fBodyBodyGyroJerkMag_mean     
[80] fBodyBodyGyroJerkMag_std     
[81] fBodyBodyGyroJerkMag_meanFreq