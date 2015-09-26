## Getting and Cleaning Data Course Project

### Author: chadlerj
### Date: September 2015

## Purpose

The purpose of this project was to demonstrate my ability to collect, work with, and clean a data set.

## Included in this repository.

*This readme.md file
*a code book file called codebook.md
*an R script called run_analysis.R that produces a tidy data set from parts of the raw data.
*a tidy dataset in a file called smartphone.txt

## Notes 

the program reads from data that can be downloaded from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

the program reads the test and training data from this file, once the file is unzipped
combines the sets, takes the headers from the features.txt file, and provides average information for each
variable that is a mean or a standard deviation in the file.  This data is summarized by each subject in the test
and each type of activity performed.  The variables summarized are listed in the codebook.md file.


