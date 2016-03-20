################################################################################
# Program: run_analysis
# Project: Data Science Course: Cleaning Data Project
# Description: Constructs a dataset from data available at the UCI Machine
#              Learning repository regarding motion measurements.
#
# Author: Eric Reyes
# Date: Spring 2016
# Modified:
#
# Notes:


################################################################################
# Header

# Load Packages
pkgs <- c("dplyr")
for(pkg in pkgs) library(pkg, character.only=TRUE)

# Specify Directory
dir <- "//MyDocs/MyDocs/reyesem/Documents/DataScience/Data/UCI HAR Dataset/"




################################################################################
# Obtain Data
#  There is both a test and training dataset. Each dataset exists in a series
#  of files. A summary of the files follows:
#    1. Raw data from smartphones (ignored).
#    2. File stating the subject corresponding to each record.
#    3. File giving the activity being performed by the subject.
#
#  There are also two overview files which are helpful:
#    4. File linking the activity to the encoded value.
#    5. File providing the names of the features/variables available.
#
#  These are described in more detail in the README file accompanying the data.
#
#  Only want variables which are associated with the mean or standard deviation
#  of the metrics.

# Activity Labels
Act.Labs <- read.table(file=paste(dir, "activity_labels.txt", sep=""),
                       col.names=c("ActivityCode", "Activity"),
                       stringsAsFactors=FALSE)


# Variable Names
#  Just grab the column of variable names.
#  Determine which are mean and standard deviation variables.
Full.Var.List <- read.table(file=paste(dir, "features.txt", sep=""),
                            stringsAsFactors=FALSE)$V2

Var.Pos <- grepl("(mean\\(\\))|(std\\(\\))", Full.Var.List)


### Test Data
# Begin by grabbing the feature vector, align it to the subject of interest,
# and attach the activity type. Only read in the features of interest.
df.test <- read.table(file=paste(dir, "test/X_test.txt", sep=""),
                      col.names=Full.Var.List,
                      colClasses=ifelse(Var.Pos, "numeric", "NULL"))

df.test$SubjectID <- 
  read.table(file=paste(dir, "test/subject_test.txt", sep=""))$V1

df.test$Activity <-
  read.table(file=paste(dir, "test/y_test.txt", sep=""))$V1


### Training Data
# Repeat above process for training data.
df.train <- read.table(file=paste(dir, "train/X_train.txt", sep=""),
                       col.names=Full.Var.List,
                       colClasses=ifelse(Var.Pos, "numeric", "NULL"))

df.train$SubjectID <-
  read.table(file=paste(dir, "train/subject_train.txt", sep=""))$V1

df.train$Activity <-
  read.table(file=paste(dir, "train/y_train.txt", sep=""))$V1




################################################################################
# Clean Data
#  Merge the two datasets together. As the data was randomly divided initially,
#  we simply stack the two datasets on top of one another.
#
#  An indicator is added to indicate which dataset the record was originally
#  in.
#
#  Activity labels are switched out.
#
#  Variables names are cleaned up.

# Combine Data
df.full <- rbind(df.test, df.train) %>% 
  mutate(TestTrain = rep(c("Test", "Train"), 
                         times=c(nrow(df.test), nrow(df.train))))


# Edit Activity Labels
df.full <- mutate(df.full, 
                  Activity = factor(Activity,
                                    levels=Act.Labs$ActivityCode,
                                    labels=Act.Labs$Activity))

# Clean up Variable Names
colnames(df.full) <- gsub("\\.\\.", "", colnames(df.full))

# Save Data
write.table(df.full, 
            file=paste("//MyDocs/MyDocs/reyesem/Documents/DataScience/Data",
                       "/dffull.txt", sep=""), row.names=FALSE)




################################################################################
# Create Secondary Dataset
#  A secondary dataset is constructed which contains the average of each of
#  the variables in the full dataset, segregated by activity and subject.

# Average within Subject/Activity
df.summary <- df.full %>% group_by(SubjectID, Activity) %>%
  summarise_each("mean", vars=-TestTrain)


# Update Variable Names
colnames(df.summary)[grep("^(t|f)", colnames(df.summary))] <-
  paste("M.", colnames(df.summary)[grep("^(t|f)", colnames(df.summary))], 
        sep="")

# Save Data
write.table(df.summary, 
            file=paste("//MyDocs/MyDocs/reyesem/Documents/DataScience/Data",
                       "/dfsummary.txt", sep=""), row.names=FALSE)
