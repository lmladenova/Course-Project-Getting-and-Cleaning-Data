---
title: "Code Book"
output: html_document
---
# Overview
This code book contains:

1. Description of the study design used to collect the data
2. Description of the variables

# Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial raw linear acceleration and angular velocity time domain signals were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Next, a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain measures of some of the abovementioned measures (i.e., linear body acceleration, angular velocity, Jerk signals and magnitude). 

Finally, the mean value and the standard deviation were estimated from these signals for each subject performing each activity in each sample window. The average of these estimates for each subject and each activity were used for the creation of this dataset. 

# Data
The "averagetidy" dataset consists of 180 observations and 81 variables. For each observation it is provided:
<p>1. number identifier of the subject performing the activity;</p>
2. the description of the activity (e.g., walking, sitting);
3. the average of all window samples for each measurement variable (n = 79) for the subject in the respective activity.

# Code Book
## General Overview of Variables
* This dataset contains the total of 81 variables; 
* All of the measurement variables represent the average of the respective measures of all sample observations for each subject for each activity;
* The names of the measurement variables are composed of the following components:

Distinction Feature | Components
--------------------|-----------
Domain              |Time, Frequency
Source              |Body, Gravity
Sensor signals      |Accelerator, Gyroscope
Derivative variables|Jerk signals, Magnitude, Jerk signals magnitude
Statistics variables|Mean, MeanFrequency, Standard Deviation
Axis                |Xaxis, Yaxis, Zaxis

1. Time, or frequency - denote the two domains the signals were obtained from;
2. Body, or Gravity - denote the body linear acceleration and gravity acceleration signals;
3. Accelerator, or Gyroscope - denote the signals from each of the used instruments. That is, accelerometer measures the linear acceleration, while the gyroscope measures the angular velocity.
4. Jerk signals, Magnitude, or Jerk signals magnitude - denote the respective derivative measures obtained after transforming the raw signals;
5. Xaxis, Yaxis, or Zaxis - denote the respective axis the movement was measured on.

## Detailed Description of Variables
1. **subject_id** - subject identifier
* Units: Number
* Min: 1
* Max: 30

2. **activity** - activity identifier
* Units: Verbal description
* Range: Walking, walking upstairs, walking downstairs, sitting, standing,          laying

3. **AverageTimeBodyAcceleratorMeanXaxis**- average of the mean of time domain body linear acceleration signals measured on the X axis;
* Units: gravity units
* Min: 0.2216
* Max: 0.3015
                                  
4. **AverageTimeBodyAcceleratorMeanYaxis**- average of the mean of time domain body linear acceleration signals measured on the Y axis; 
* Units: gravity units
* Min: -0.040514
* Max: -0.001308

5. **AverageTimeBodyAcceleratorMeanZaxis**- average of the mean of time domain body linear acceleration signals measured on the Z axis; 
* Units: gravity units
* Min: -0.15251
* Max: -0.07538

6. **AverageTimeBodyAcceleratorStandardDeviationXaxis**- average of the standard deviation of time domain body linear acceleration signals measured on the X axis;                  
* Units: gravity units
* Min: -0.9961
* Max: 0.6269

7. **AverageTimeBodyAcceleratorStandardDeviationYaxis**- average of the standard deviation of time domain body linear acceleration signals measured on the Y axis;                                    
* Units: gravity units
* Min: -0.99024
* Max: 0.61694

8. **AverageTimeBodyAcceleratorStandardDeviationZaxis**- average of the standard deviation of time domain body linear acceleration signals measured on the Z axis;                                    
* Units: gravity units
* Min: -0.9877
* Max:  0.6090

9. **AverageTimeGravityAcceleratorMeanXaxis**- average of the mean of time domain gravity linear acceleration signals measured on the X axis;                                              
* Units: gravity units
* Min: -0.6800
* Max: 0.9745

10. **AverageTimeGravityAcceleratorMeanYaxis**- average of the mean of time domain gravity linear acceleration signals measured on the Y axis;                             
* Units: gravity units
* Min: -0.47989
* Max: 0.95659  

11. **AverageTimeGravityAcceleratorMeanZaxis**- average of the mean of time domain gravity linear acceleration signals measured on the Z axis;                            
* Units: gravity units
* Min: -0.49509
* Max: 0.95787

12. **AverageTimeGravityAcceleratorStandardDeviationXaxis**- average of the standard deviation of time domain gravity linear acceleration signals measured on the X axis;               
* Units: gravity units
* Min: -0.9968
* Max: -0.8296

13. **AverageTimeGravityAcceleratorStandardDeviationYaxis**- average of the standard deviation of time domain gravity linear acceleration signals measured on the Y axis;
* Units: gravity units
* Min: -0.9942
* Max: -0.6436

14. **AverageTimeGravityAcceleratorStandardDeviationZaxis**- average of the standard deviation of time domain gravity linear acceleration signals measured on the Z axis;
* Units: gravity units
* Min: -0.9910
* Max: -0.6102

15. **AverageTimeBodyAcceleratorJerksignalsMeanXaxis**- average of the mean of time domain body linear acceleration Jerk signals measured on the X axis;
* Units: meters/second<sup>3</sup>
* Min: 0.04269
* Max: 0.13019

16. **AverageTimeBodyAcceleratorJerksignalsMeanYaxis**- average of the mean of time domain body linear acceleration Jerk signals measured on the Y axis;
* Units: meters/second<sup>3</sup>
* Min: -0.0386872
* Max: 0.0568186

17. **AverageTimeBodyAcceleratorJerksignalsMeanZaxis**- average of the mean of time domain body linear acceleration Jerk signals measured on the Z axis;
* Units: meters/second<sup>3</sup>
* Min: -0.067458
* Max: 0.038053

18. **AverageTimeBodyAcceleratorJerksignalsStandardDeviationXaxis**- average of the standard deviation of time domain body linear acceleration Jerk signals measured on the X axis;
* Units: meters/second<sup>3</sup> 
* Min: -0.9946
* Max: 0.5443

19. **AverageTimeBodyAcceleratorJerksignalsStandardDeviationYaxis**- average of the standard deviation of time domain body linear acceleration Jerk signals measured on the Y axis;
* Units: meters/second<sup>3</sup>
* Min: -0.9895
* Max: 0.3553

20. **AverageTimeBodyAcceleratorJerksignalsStandardDeviationZaxis**- average of the standard deviation of time domain body linear acceleration Jerk signals measured on the Z axis;
* Units: meters/second<sup>3</sup>
* Min: -0.99329
* Max: 0.03102

21. **AverageTimeBodyGyroscopeMeanXaxis**- average of the mean of time domain body angular velocity measured on the X axis;
* Units: radians/second
* Min: -0.20578
* Max: 0.19270

22. **AverageTimeBodyGyroscopeMeanYaxis**- average of the mean of time domain body angular velocity measured on the Y axis;
* Units: radians/second
* Min: -0.20421
* Max: 0.02747

23. **AverageTimeBodyGyroscopeMeanZaxis**- average of the mean of time domain body angular velocity measured on the Z axis;
* Units: radians/second
* Min: -0.07245
* Max: 0.17910

24. **AverageTimeBodyGyroscopeStandardDeviationXaxis**- average of the standard deviation of time domain body angular velocity measured on the X axis;
* Units: radians/second
* Min: -0.9943
* Max: 0.2677

25. **AverageTimeBodyGyroscopeStandardDeviationYaxis**- average of the standard deviation of time domain body angular velocity measured on the Y axis;
* Units: radians/second
* Min: -0.9942
* Max: 0.4765

26. **AverageTimeBodyGyroscopeStandardDeviationZaxis**- average of the standard deviation of time domain body angular velocity measured on the Z axis;
* Units: radians/second
* Min: -0.9855
* Max:  0.5649

27. **AverageTimeBodyGyroscopeJerksignalsMeanXaxis**- average of the mean of time domain body angular velocity Jerk signals measured on the X axis;
* Units: radians/second<sup>3</sup>
* Min: -0.15721
* Max: -0.02209

28. **AverageTimeBodyGyroscopeJerksignalsMeanYaxis**- average of the mean of time domain body angular velocity Jerk signals measured on the Y axis;
* Units: radians/second<sup>3</sup>
* Min: -0.07681
* Max: -0.01320 

29. **AverageTimeBodyGyroscopeJerksignalsMeanZaxis**- average of the mean of time domain body angular velocity Jerk signals measured on the Z axis;
* Units: radians/second<sup>3</sup>
* Min: -0.092500
* Max: -0.006941
30. **AverageTimeBodyGyroscopeJerksignalsStandardDeviationXaxis**- average of the standard deviation of time domain body angular velocity Jerk signals measured on the X axis;
* Units: radians/second<sup>3</sup>
* Min: -0.9965
* Max:  0.1791
31. **AverageTimeBodyGyroscopeJerksignalsStandardDeviationYaxis**- average of the standard deviation of time domain body angular velocity Jerk signals measured on the Y axis;
* Units: radians/second<sup>3</sup>
* Min: -0.9971
* Max:  0.2959
32. **AverageTimeBodyGyroscopeJerksignalsStandardDeviationZaxis**- average of the standard deviation of time domain body angular velocity Jerk signals measured on the Z axis;
* Units: radians/second<sup>3</sup>
* Min: -0.9954
* Max: 0.1932
33. **AverageTimeBodyAcceleratorMagnitudeMean**- average of the mean of magnitude of time domain body linear acceleration signals;
* Units: gravity units
* Min: -0.9865
* Max:  0.6446
34. **AverageTimeBodyAcceleratorMagnitudeStandardDeviation**- average of the standard deviation of the magnitude of time domain body linear acceleration signals;
* Units: gravity units
* Min: -0.9865
* Max: 0.4284
35. **AverageTimeGravityAcceleratorMagnitudeMean**- average of the mean of magnitude of time domain gravity linear acceleration signals;
* Units: gravity units
* Min: -0.9865
* Max: 0.6446
36. **AverageTimeGravityAcceleratorMagnitudeStandardDeviation**- average of the standard deviation of magnitude of time domain gravity linear acceleration signals;
* Units: gravity units
* Min: -0.9865
* Max:  0.4284
37. **AverageTimeBodyAcceleratorJerksignalsMagnitudeMean**- average of the mean of magnitude of time domain body linear acceleration Jerk signals;
* Units: meters/second<sup>3</sup>
* Min: -0.9928
* Max:  0.4345
38. **AverageTimeBodyAcceleratorJerksignalsMagnitudeStandardDeviation**- average of the standard deviation of magnitude of time domain body linear acceleration Jerk signals;
* Units: meter/second<sup>3</sup>
* Min: -0.9946
* Max:  0.4506
39. **AverageTimeBodyGyroscopeMagnitudeMean**- average of the mean of magnitude of time domain body angular velocity signals;
* Units: radians/second
* Min: -0.9807
* Max:  0.4180
40. **AverageTimeBodyGyroscopeMagnitudeStandardDeviation**- average of the standard deviation of magnitude of time domain body angular velocity signals;
* Units: radians/second
* Min: -0.9814
* Max:  0.3000
41. **AverageTimeBodyGyroscopeJerksignalsMagnitudeMean**- average of the mean of magnitude of time domain body angular velocity Jerk signals;
* Units: radians/second<sup>3</sup>
* Min: -0.99732
* Max: 0.08758
42. **AverageTimeBodyGyroscopeJerksignalsMagnitudeStandardDeviation**- average of the standard deviation of magnitude of time domain body angular velocity Jerk signals;
* Units: radians/second<sup>3</sup>
* Min: -0.9977
* Max:  0.2502
43. **AverageFrequencyBodyAcceleratorMeanXaxis**- average of the mean of frequency domain body acceleration signals measured on the X axis;
* Units: n/a
* Min: -0.9952
* Max:  0.5370
44. **AverageFrequencyBodyAcceleratorMeanYaxis**- average of the mean of frequency domain body acceleration signals measured on the Y axis;
* Units: n/a
* Min: -0.98903
* Max:  0.52419
45. **AverageFrequencyBodyAcceleratorMeanZaxis**- average of the mean of frequency domain body acceleration signals measured on the Z axis;
* Units: n/a
* Min: -0.9895
* Max:  0.2807
46. **AverageFrequencyBodyAcceleratorStandardDeviationXaxis**- average of the standard deviation of frequency domain body acceleration signals measured on the X axis;
* Units: n/a
* Min: -0.9966
* Max:  0.6585
47. **AverageFrequencyBodyAcceleratorStandardDeviationYaxis**- average of the standard deviation of frequency domain body acceleration signals measured on the Y axis;
* Units: n/a
* Min: -0.99068
* Max:  0.56019
48. **AverageFrequencyBodyAcceleratorStandardDeviationZaxis**- average of the standard deviation of frequency domain body acceleration signals measured on the Z axis;
* Units: n/a
* Min: -0.9872
* Max:  0.6871
49. **AverageFrequencyBodyAcceleratorMeanFrequencyXaxis**- average of the frequency mean of body linear acceleration signals measured on the X axis;
* Units: n/a
* Min: -0.63591
* Max:  0.15912
50. **AverageFrequencyBodyAcceleratorMeanFrequencyYaxis**- average of the frequency mean of body linear acceleration signals measured on the Y axis;
* Units: n/a
* Min: -0.379518
* Max:  0.466528
51. **AverageFrequencyBodyAcceleratorMeanFrequencyZaxis**- average of the frequency mean of body linear acceleration signals measured on the Z axis;
* Units: n/a
* Min: -0.52011
* Max:  0.40253
52. **AverageFrequencyBodyAcceleratorJerksignalsMeanXaxis**- average of the frequency mean of body linear acceleration Jerk signals measured on the X axis;
* Units: n/a
* Min: -0.9946
* Max:  0.4743
53. **AverageFrequencyBodyAcceleratorJerksignalsMeanYaxis**- average of the frequency mean of body linear acceleration Jerk signals measured on the Y axis;
* Units: n/a
* Min: -0.9894
* Max:  0.2767
54. **AverageFrequencyBodyAcceleratorJerksignalsMeanZaxis**- average of the frequency mean of body linear acceleration Jerk signals measured on the Z axis;
* Units: n/a
* Min: -0.9920
* Max:  0.1578
55. **AverageFrequencyBodyAcceleratorJerksignalsStandardDeviationXaxis**- average of the standard deviation of frequency domain body linear acceleration Jerk signals measured on X axis;
* Units: n/a
* Min: -0.9951
* Max: 0.4768
56. **AverageFrequencyBodyAcceleratorJerksignalsStandardDeviationYaxis**- average of the standard deviation of frequency domain body linear acceleration Jerk signals measured on Y axis;
* Units: n/a
* Min: -0.9905
* Max:  0.3498
57. **AverageFrequencyBodyAcceleratorJerksignalsStandardDeviationZaxis**- average of the standard deviation of frequency domain body linear acceleration Jerk signals measured on Z axis;
* Units: n/a
* Min: -0.993108
* Max: -0.006236
58. **AverageFrequencyBodyAcceleratorJerksignalsMeanFrequencyXaxis**- average of the frequency mean of body linear acceleration Jerk signals measured on X axis;
* Units: n/a
* Min: -0.57604
* Max:  0.33145
59. **AverageFrequencyBodyAcceleratorJerksignalsMeanFrequencyYaxis**- average of the frequency mean of body linear acceleration Jerk signals measured on Y axis;
* Units: n/a
* Min: -0.60197
* Max:  0.19568
60. **AverageFrequencyBodyAcceleratorJerksignalsMeanFrequencyZaxis**- average of the frequency mean of body linear acceleration Jerk signals measured on Z axis;
* Units: n/a
* Min: -0.62756
* Max:  0.23011
61. **AverageFrequencyBodyGyroscopeMeanXaxis**- average of the mean of frequency domain body angular velocity signals measured on X axis;
* Units: n/a
* Min: -0.9931
* Max:  0.4750
62. **AverageFrequencyBodyGyroscopeMeanYaxis**- average of the mean of frequency domain body angular velocity signals measured on Y axis;
* Units: n/a
* Min: -0.9940
* Max:  0.3288
63. **AverageFrequencyBodyGyroscopeMeanZaxis**- average of the mean of frequency domain body angular velocity signals measured on Z axis;
* Units: n/a
* Min: -0.9860
* Max:  0.4924
64. **AverageFrequencyBodyGyroscopeStandardDeviationXaxis**- average of the standard deviation of frequency domain body angular velocity signals measured on X axis;
* Units: n/a
* Min: -0.9947
* Max:  0.1966
65. **AverageFrequencyBodyGyroscopeStandardDeviationYaxis**- average of the standard deviation of frequency domain body angular velocity signals measured on Y axis;
* Units: n/a
* Min: -0.9944
* Max:  0.6462
66. **AverageFrequencyBodyGyroscopeStandardDeviationZaxis**- average of the standard deviation of frequency domain body angular velocity signals measured on Z axis;
* Units: n/a
* Min: -0.9867
* Max:  0.5225
67. **AverageFrequencyBodyGyroscopeMeanFrequencyXaxis**- average of the frequency mean of body angular velocity signals measured on X axis;
* Units: n/a
* Min: -0.395770
* Max: 0.249209
68. **AverageFrequencyBodyGyroscopeMeanFrequencyYaxis**- average of the frequency mean of body angular velocity signals measured on Y axis;
* Units: n/a
* Min: -0.66681
* Max:  0.27314
69. **AverageFrequencyBodyGyroscopeMeanFrequencyZaxis**- average of the frequency mean of body angular velocity signals measured on Z axis;
* Units: n/a
* Min: -0.50749
* Max:  0.37707
70. **AverageFrequencyBodyAcceleratorMagnitudeMean**- average of the mean of magnitude of frequency domain body linear acceleration signals;
* Units: n/a
* Min: -0.9868
* Max:  0.5866
71. **AverageFrequencyBodyAcceleratorMagnitudeStandardDeviation**- average of the standard deviation of magnitude of frequency domain body linear acceleration signals;
* Units: n/a
* Min: -0.9876
* Max:  0.1787
72. **AverageFrequencyBodyAcceleratorMagnitudeMeanFrequency**- average of the frequency mean of magnitude of body linear acceleration signals;
* Units: n/a
* Min: -0.31234
* Max:  0.43585
73. **AverageFrequencyBodyAcceleratorJerksignalsMagnitudeMean**- average of the mean of frequency domain body linear acceleration Jerk signals;
* Units: n/a
* Min: -0.9940
* Max:  0.5384
74. **AverageFrequencyBodyAcceleratorJerksignalsMagnitudeStandardDeviation**- average of the standard deviation of magnitude of frequency domain body linear acceleration Jerk signals;
* Units: n/a
* Min: -0.9944
* Max:  0.3163
75. **AverageFrequencyBodyAcceleratorJerksignalsMagnitudeMeanFrequency**- average of the frequency mean of magnitude of body linear acceleration Jerk signals;
* Units: n/a
* Min: -0.12521
* Max:  0.48809
76. **AverageFrequencyBodyGyroscopeMagnitudeMean**- average of the mean of magnitude of frequency domain body angular velocity signals;
* Units: n/a
* Min: -0.9865
* Max:  0.2040
77. **AverageFrequencyBodyGyroscopeMagnitudeStandardDeviation**- average of the standard deviation of magnitude of frequency domain body angular velocity signals;
* Units: n/a
* Min: -0.9815
* Max:  0.2367
78. **AverageFrequencyBodyGyroscopeMagnitudeMeanFrequency**- average of the frequency mean of magnitude of body angular velocity signals;
* Units: n/a
* Min: -0.45664
* Max:  0.40952
79. **AverageFrequencyBodyGyroscopeJerksignalsMagnitudeMean**- average of the mean of magnitude of frequency domain body angular velocity Jerk signals;
* Units: n/a
* Min: -0.9976
* Max:  0.1466
80. **AverageFrequencyBodyGyroscopeJerksignalsMagnitudeStandardDeviation**- average of the standard deviation of magnitude of frequency domain body angular velocity Jerk signals;
* Units: n/a
* Min: -0.9976
* Max:  0.2878
81. **AverageFrequencyBodyGyroscopeJerksignalsMagnitudeMeanFrequency**- average of the frequency mean of magnitude of body angular velocity Jerk signals;
* Units: n/a
* Min: -0.18292
* Max:  0.42630
        


