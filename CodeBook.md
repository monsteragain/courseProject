#CodeBook

From the original features info:
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Variables in resulting tidy data set


1. tBodyAccMeanXAvg
  * average of the means of time domain body acceleration signals on X axis
2. tBodyAccMeanYAvg
  * average of the means of time domain body acceleration signals on Y axis
3. tBodyAccMeanZAvg
  * average of the means of time domain body acceleration signals on Z axis
4. tBodyAccStdXAvg
  * average of the standard deviations of time domain body acceleration signals on X axis
5. tBodyAccStdYAvg
  * average of the standard deviations of time domain body acceleration signals on Y axis
6. tBodyAccStdZAvg
  * average of the standard deviations of time domain body acceleration signals on Z axis
7. tGravityAccMeanXAvg
  * average of the means of time domain gravity acceleration signals on X axis
8. tGravityAccMeanYAvg
  * average of the means of time domain gravity acceleration signals on Y axis
9. tGravityAccMeanZAvg
  * average of the means of time domain gravity acceleration signals on Z axis
10. tGravityAccStdXAvg
  * average of the standard deviations of time domain gravity acceleration signals on X axis
11. tGravityAccStdYAvg
  * average of the standard deviations of time domain gravity acceleration signals on Y axis
12. tGravityAccStdZAvg
  * average of the standard deviations of time domain gravity acceleration signals on Z axis
13. tBodyAccJerkMeanXAvg
  * average of the means of time domain body acceleration jerk signals on X axis
14. tBodyAccJerkMeanYAvg
  * average of the means of time domain body acceleration jerk signals on Y axis
15. tBodyAccJerkMeanZAvg
  * average of the means of time domain body acceleration jerk signals on Z axis
16. tBodyAccJerkStdXAvg
  * average of the standard deviations of time domain body acceleration jerk signals on X axis
17. tBodyAccJerkStdYAvg
  * average of the standard deviations of time domain body acceleration jerk signals on Y axis
18. tBodyAccJerkStdZAvg
  * average of the standard deviations of time domain body acceleration jerk signals on Z axis
19. tBodyGyroMeanXAvg
  * average of the means of time domain body gyro signals on X axis
20. tBodyGyroMeanYAvg
  * average of the means of time domain body gyro signals on Y axis
21. tBodyGyroMeanZAvg
  * average of the means of time domain body gyro signals on Z axis
22. tBodyGyroStdXAvg
  * average of the standard deviations of time domain body gyro signals on X axis
23. tBodyGyroStdYAvg
  * average of the standard deviations of time domain body gyro signals on Y axis
24. tBodyGyroStdZAvg
  * average of the standard deviations of time domain body gyro signals on Z axis
25. tBodyGyroJerkMeanXAvg
  * average of the means of time domain body gyro jerk signals on X axis
26. tBodyGyroJerkMeanYAvg
  * average of the means of time domain body gyro jerk signals on Y axis
27. tBodyGyroJerkMeanZAvg
  * average of the means of time domain body gyro jerk signals on Z axis
28. tBodyGyroJerkStdXAvg
  * average of the standard deviations of time domain body gyro jerk signals on X axis
29. tBodyGyroJerkStdYAvg
  * average of the standard deviations of time domain body gyro jerk signals on Y axis
30. tBodyGyroJerkStdZAvg
  * average of the standard deviations of time domain body gyro jerk signals on Z axis
31. tBodyAccMagMeanAvg
  * average of the means of time domain body acceleration magnitude signals
32. tBodyAccMagStdAvg
  * average of the standard deviations of time domain body acceleration magnitude signals
33. tGravityAccMagMeanAvg
  * average of the means of time domain gravity acceleration magnitude signals
34. tGravityAccMagStdAvg
  * average of the standard deviations of time domain gravity acceleration magnitude signals
35. tBodyAccJerkMagMeanAvg
  * average of the means of time domain body acceleration jerk magnitude signals
36. tBodyAccJerkMagStdAvg
  * average of the standard deviations of time domain body acceleration jerk magnitude signals
37. tBodyGyroMagMeanAvg
  * average of the means of time domain body gyro magnitude signals
38. tBodyGyroMagStdAvg
  * average of the standard deviations of time domain body gyro magnitude signals
39. tBodyGyroJerkMagMeanAvg
  * average of the means of time domain body gyro jerk magnitude signals
40. tBodyGyroJerkMagStdAvg
  * average of the standard devaitions of time domain body gyro jerk magnitude signals
41. fBodyAccMeanXAvg
  * average of the means of frequency domain body acceleration signals on X axis
42. fBodyAccMeanYAvg
  * average of the means of frequency domain body acceleration signals on Y axis
43. fBodyAccMeanZAvg
  * average of the means of frequency domain body acceleration signals on Z axis
44. fBodyAccStdXAvg
  * average of the standard deviations of frequency domain body acceleration signals on X axis
45. fBodyAccStdYAvg
  * average of the standard deviations of frequency domain body acceleration signals on Y axis
46. fBodyAccStdZAvg
  * average of the standard deviations of frequency domain body acceleration signals on Z axis
47. fBodyAccJerkMeanXAvg
  * average of the means of frequency domain body acceleration jerk signals on X axis
48. fBodyAccJerkMeanYAvg
  * average of the means of frequency domain body acceleration jerk signals on Y axis
49. fBodyAccJerkMeanZAvg
  * average of the means of frequency domain body acceleration jerk signals on Z axis
50. fBodyAccJerkStdXAvg
  * average of the standard deviations of frequency domain body acceleration jerk signals on X axis
51. fBodyAccJerkStdYAvg
  * average of the standard deviations of frequency domain body acceleration jerk signals on Y axis
52. fBodyAccJerkStdZAvg
  * average of the standard deviations of frequency domain body acceleration jerk signals on Z axis
53. fBodyGyroMeanXAvg
  * average of the means of frequency domain body gyro signals on X axis
54. fBodyGyroMeanYAvg
  * average of the means of frequency domain body gyro signals on Y axis
55. fBodyGyroMeanZAvg
  * average of the means of frequency domain body gyro signals on Z axis
56. fBodyGyroStdXAvg
  * average of the standard deviations of frequency domain body gyro signals on X axis
57. fBodyGyroStdYAvg
  * average of the standard deviations of frequency domain body gyro signals on Y axis
58. fBodyGyroStdZAvg
  * average of the standard deviations of frequency domain body gyro signals on Z axis
59. fBodyAccMagMeanAvg
  * average of the means of frequency domain body acceleration magnitude signals
60. fBodyAccMagStdAvg
  * average of the standard deviations of frequency domain body acceleration magnitude signals
61. fBodyAccJerkMagMeanAvg
  * average of the means of frequency domain body acceleration jerk magnitude signals
62. fBodyAccJerkMagStdAvg
  * average of the standard deviations of frequency domain body acceleration jerk magnitude signals
63. fBodyGyroMagMeanAvg
  * average of the means of frequency domain gyro magnitude signals
64. fBodyGyroMagStdAvg
  * average of the standard deviations of frequency domain gyro magnitude signals
65. fBodyGyroJerkMagMeanAvg
  * average of the means of frequency domain body gyro jerk magnitude signals
66. fBodyGyroJerkMagStdAvg
  * average of the standard deviations of frequency domain body gyro jerk magnitude signals
67. Subjects
  * subjects label
68. Activities
  * activity lable