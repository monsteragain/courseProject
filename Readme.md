
The code 

1. reads X_test and X-train data and merges it into one dataset
2. reads and rbinds subject_test.txt and subject_train.txt
3. names the column so when we cbind it to data, there'd be no duplicate column names
4. reads and rbinds y_test.txt and y_train.txt
5. names the column so when we cbind it to data, there'd be no duplicate column names
6. makes a vector 'features' with the names from 'features.txt'
7. uses grep to find the positions of features that contain 'mean()' or 'std()'
8. uses 'featurepos' to extract only the columns with measurements on the mean and standard deviation from 'data'
9. applies 'featurepos' to 'features' to make a vector of measurement names, then make syntactically valid names with 'make.name'
10. cleans the names with some substitutions to make readable descriptive names
11. names the columns in 'data'
12. cbinds subjects and activities to data - thus we merge the measurements with subjects and activities
13. reads activity labels from file
14. replaces activity indices with descriptive activity labels
15. as a result we have a dataset that will be used to create our tidy data
16. creates a vector of strings to be used as colnames in the resulting data frame
17. adds 'Avg' to every var name to reflect the fact that we calculate the average of means and standard deviations
18. creates an empty dataframe to store the tidy data
19. loops through subject indices
20. finds the rows in the original 'data' dataset for that subject
21. calculates the mean of all columns for given subject by activity label
22. appends the results to df dataframe
23. as a result we get a dataframe that contains rows of averages of each activity measurements for each subject