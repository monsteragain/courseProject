
##Read X_test and X-train data, use 'rbind' to merge the data and store it in 'data' variable
data <- rbind(read.table("UCI HAR Dataset/test/X_test.txt"),read.table("UCI HAR Dataset/train/X_train.txt"))

##Read and rbind subject_test.txt and subject_train.txt
subjects <- rbind(read.table("UCI HAR Dataset/test/subject_test.txt"),read.table("UCI HAR Dataset/train/subject_train.txt"))
##name the column so when we cbind it to data, there'd be no duplicate column names
colnames(subjects) <- "Subjects"

##Read and rbind y_test.txt and y_train.txt
activities <- rbind(read.table("UCI HAR Dataset/test/y_test.txt"),read.table("UCI HAR Dataset/train/y_train.txt"))
##name the column so when we cbind it to data, there'd be no duplicate column names
colnames(activities) <- "Activities"

##make a vector 'features' with the names from 'features.txt'
features <- as.vector(read.table("UCI HAR Dataset/features.txt")[ ,2])

##use grep to find the positions of features that contain 'mean()' or 'std()'
featurepos <- grep('mean\\(\\)|std\\(\\)',features)

##use 'featurepos' to extract only the columns with measurements on the mean and standard deviation from 'data'
data <- data[ ,featurepos]

##apply 'featurepos' to 'features' to make a vector of measurement names, then make syntactically valid names with 'make.name'
featurenames <- make.names(features[featurepos],unique = TRUE, allow_ = FALSE)

##clean the names with some substitutions to make readable descriptive names
featurenames <- gsub('\\.','',featurenames) ##remove dots
featurenames <- gsub('mean','Mean',featurenames) ##capitalize first letter of 
                                                 ##'mean' to make it more readable
featurenames <- gsub('std','Std',featurenames) ##capitalize first letter of 
                                               ##'std' to make it more readable
featurenames <- gsub('BodyBody','Body',featurenames) ##correcting themismatch in the 
##original authors features names as pointed by David Hood at 
##https://class.coursera.org/getdata-009/forum/thread?thread_id=89#comment-656

##name the columns in 'data'
colnames(data) <- featurenames

##cbind subjects and activities to data - thus we merge the measurements with subjects and activities
data <- cbind(data,c(subjects,activities))

##read activity labels from file
activityLabels <- as.vector(read.table("UCI HAR Dataset/activity_labels.txt")[ ,2])

##turn the numbers in data$Activities column into factors then change the level
##names (this changes it in the same column)- as suggested by David Hood at 
##https://class.coursera.org/getdata-009/forum/thread?thread_id=141#post-523
data$Activities <- factor(data$Activities, labels = activityLabels)

##Now getting to create the tidy data set

##Create a vector of strings to be used as colnames in the resulting data frame
colnames <- colnames(data)
##adding 'Avg' to every var name to reflect the fact that we calculate 
##the average of means and standard deviations
colnames[1] <- paste0(colnames[1],"Avg")
##create an empty dataframe to store the tidy data
##the method to create empty df with column names by Floo0 at 
##http://stackoverflow.com/a/26614741
df <- read.table(text='',col.names=colnames(data))

##loop through subjects
for (i in 1:30) {
        ##find indices of rows for the given subject
        ##NB! I'm not using if condition to loop through all the rows of data 
        ##as 'which' is supposed to be a faster and less resourceful way
        rows_subjects <- which(data$Subjects==i)
        for (a in 1:6) {
                ##find a subset of row indices that contain the given activity label
                ##keep in mind, it finds indices inside data set subsetted by rows_subjects, 
                ##not inside original 'data'
                
                rows_activities <- which(data[rows_subjects,"Activities"]==activityLabels[a])
                ##finaly, get rows in the original 'data' with a given subject and activity
                rows <- rows_subjects[rows_activities]
                ##create a vector with averages for each of 66 columns with measurements
                ##plus the subject label - I do not include activityLabel here as it
                ##is a string and will coerce all the vector into a character class
                vec <- c(as.vector(colMeans(data[rows,1:66])),i)
                rownumber <- nrow(df) + 1
                df[rownumber,1:67] <- vec
                df[rownumber,68] <- activityLabels[a]
                
        }
}

df