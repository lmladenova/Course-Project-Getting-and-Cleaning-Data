# Course Project: Getting and Cleaning Data
## Overview
The objective of this course project is to prepare a tidy data that can be used for later analysis. This repository contains (1) the script for tyding the "Human Activity Recognition Using Smartphones Dataset", and (2) the codebook for the tidy dataset.

Thirty participants performed six daily activities (i.e., walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a smartphone (Samsung Galazy S II) on their waist. By using the embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured, after subsequent transformation of the sensor signal several derivative variables were obtained as well. 

## The Raw Data
The data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 
The raw data was in the form of the following separate files:

<p> I. General Files </p>
1. 'features.txt' - containing a list of all the features(or measurement variables);

2. 'activity_labels.txt' - containing the links of the class labels with their respective activity name;

<p> II. Train Dataset Files </p>
1. 'train/X_train.txt' - a dataset comprised of the records for 7352 window samples for the full set of 561 features; 

2. 'train/y_train.txt' - identifies the activity performed in each window sample;

3. 'train/subject_train.txt' - identifies the subject who performed the activity for each window sample. 

III. Test Dataset Files
1. 'test/X_test.txt' - a data set comprised of the records for 2947 window samples for the full set of 561 features; 

2. 'test/y_test.txt' - identifies the activity performed in each window sample;

3. 'test/subject_test.txt' - identifies the subject who performed the activity for each window sample.

## The Script
<p>The R script "run_analysis.R" contains the steps used to process the raw data and produce the tidy dataset. These were as follows: </p>

1. Reads the files with the data for the test dataset (i.e., subject identifier, activity identifier, and data);
2. Concanates the test dataset three files into one dataframe called "test";
3. Reads the files with the data for the train dataset (i.e., subject identifier, activity identifier, and data);
4. Concanates the train dataset three files into one dataframe called "train";
5. Merges the test and train datasets into one dataframe called "raw";
6. Reads the file containg the variable names;
7. Extracts the names of all of the features and assigns the results to a variable called "names_var_init";
8. Since only the variables containg the mean values and the standard deviations of the measurements are going to be used, a subset of the names containing the words "mean" and "std" was made assigned to a variable called "index_meanstd";
9. Labels the columns of the "raw" dataframe using the the variable "names_var_init";
10. Extracts only the columns that contain the mean values and standard deviation of the measurements using the "index_meanstd" variable and assigns the result into a separate dataframe called "tidy";
11. Substitudes the activities indexes with their full name description (i.e., "walking" instead of "1") in the "tidy" dataframe;
12. Reformats the column names in the "tidy" dataframe, by providing more descriptive names. For instance, substituting "t" with its full meaning "Time".
13. Calculates the average of the measurements per each subject per each activity and assigns the result to a new dataframe called "averagetidy";
14. Reformats the column names to add the word "Average" to distinguish the column lables in the two tidy datasets (i.e., "tidy" and "averagetidy").
15. Writes the "averagetidy" dataset into a text file.

## The Tidy Data
The end product of the "run_analysis.R" script is a tidy data set, which complies with the requirements for tidy data as follows[1,2]:
<p> 1. Each variable is in a separate column;</p>
2. Each observation is in a separate row;
3. All of the columns are named with descriptive names;
4. Factor variables are presented as labels, not numbers;

Note: The tidy dataset is presented in wide format (i.e., each variable is in a separate column) as opposed to long format (i.e., all of the variables are in one column and there is a separate column with the values). Given the fact that both formats are acceptable by definitiion of tidy data and the decision of using one or the other is determined solely by the subsequent analysis, at the end of the script in the form of comments are given the steps to be followed if a long formated dataset is desired. 

## The Code book
The CodeBook.md file contains the code book for the "averagetidy" dataset, with detailed description of the study design and the variables used.

## References
[1]Wickham, H. (2014). Tidy Data.*Journal of Statistical Software*,*59*.Available at http://vita.had.co.nz/articles.html
[2]Leek, J.(n/a). Components of tidy data. Coursera leacture notes.

