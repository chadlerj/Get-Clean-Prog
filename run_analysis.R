## coursera course, getting and cleaning data, class project

# 1. merges the training and the test sets to create one data set
# 2. extracts only the measurements on the mean and the std
# 3. uses descriptive activity names to name the activities in the data set
# 4. appropriately labels the data set with the descriptive variable names
# 5. From the data set in #4, creates a second tidy data set with the avg of each
#    variable for each activity and each subject.

# 1. first we need to read in the test and training data sets and then merge them

subject_test <- read.table(".\\test\\subject_test.txt")
subject_train <- read.table(".\\train\\subject_train.txt")
x_test <- read.table(".\\test\\X_test.txt")
y_test <- read.table(".\\test\\y_test.txt")
x_train <- read.table(".\\train\\X_train.txt")
y_train <- read.table(".\\train\\y_train.txt")

x_all <- rbind(x_train, x_test)
rm(x_train, x_test)

y_all <- rbind(y_train, y_test)
rm(y_train, y_test)

subject_all <- rbind(subject_train, subject_test)
rm(subject_train, subject_test)

big_table <- cbind(subject_all, y_all, x_all)
rm(subject_all, y_all, x_all)

# then read the column headers and activity labels

features <- read.table("features.txt")

# define column headers

big_table_columns <- c("subject", "activity", as.character(features[,2]))
colnames(big_table) <- big_table_columns

# find only means and std columns

only_means <- grep("mean\\(\\)", colnames(big_table))
only_std   <- grep("std\\(\\)", colnames(big_table))

mean_std <- c(only_means, only_std)
mean_std <- sort(mean_std)

small_table <- big_table[, c(1, 2, mean_std)]

rm(big_table)
rm(only_means, only_std, big_table_columns)

# now prep the tidy table cycling through each subject and activity and saving the means

activity_labels <- read.table("activity_labels.txt")
tidy_table <- data.frame()
for (s in 1:30){
  sub <- subset(small_table, subject == s)
  for (a in 1:6){
    act <- subset(sub, activity==a)
    subresult <- as.vector(apply(act, 2, mean))
    tidy_table<-rbind(tidy_table, subresult)
  }
}

# replacing my column headers

colnames(tidy_table) <- colnames(small_table)

# giving the activity column a more readable value


for (r in 1:180){
  if(tidy_table[r, 2] == 1){ tidy_table[r, 2] <- "WALKING"}
  if(tidy_table[r, 2] == 2){ tidy_table[r, 2] <- "WALKING_UPSTAIRS"}
  if(tidy_table[r, 2] == 3){ tidy_table[r, 2] <- "WALKING_DOWNSTAIRS"}
  if(tidy_table[r, 2] == 4){ tidy_table[r, 2] <- "SITTING"}
  if(tidy_table[r, 2] == 5){ tidy_table[r, 2] <- "STANDING"}
  if(tidy_table[r, 2] == 6){ tidy_table[r, 2] <- "LAYING"}
  
}

# writing the data to a file without the row names

write.table(tidy_table, "smartphone.txt", row.names = FALSE)

# more clean up

rm(a, act, activity_labels, features, mean_std, r, s, small_table, sub, subresult)
