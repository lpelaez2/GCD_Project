
# run_analysis.R
# Prepare a tidy data as average of mean and standard deviation variables
# by activity and subject based on data taken from:
#  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# 1.  Prepare files
# 1.1  Download source file
# 1.2  Uncompress file to extract desired

# 2.  Prepare a data set containing wanted columns
# 2.1  Consolidate data for test and train
# 2.2  Select column number for mean and std
# 2.3  Subset data based on prior columns 
# 2.4  Add activity and subject to subset
# 2.5  Assign descritive names for columns

# 3.  Calculates mean for prior columns by activity ans subject
# 4.  Create a file for tidy data


# prepareFiles
# Download the file required and uncompress it to make data available
prepareFiles <- function(){
    sourceFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip?accessType=DOWNLOAD"
    targetFile <- "getdata_projectfiles_UCI_HAR_Dataset.zip"
    download.file(sourceFile, destfile=targetFile, method="auto", mode="wb")
    unzip (targetFile, exdir = ".", overwrite = TRUE )
    
}

# targetColumns
# Select column numbers for mean and standard deviation, as required
targetColumns <- function( features ){
    colNum1 <- grep ("mean\\(\\)", features)
    colNum2 <- grep ("std\\(\\)",  features)

    return( sort( union(colNum1, colNum2) ) )
}

# descriptiveNames
# Change feature names to be more descriptive 
descriptiveNames <- function (measures){
    names <- gsub("-", "_", measures)
    names <- gsub("\\(","", names)
    names <- gsub("\\)","", names)
    names <- sub("^t", "time_", names)
    names <- sub("^f", "freq_", names)
    names <- sub("BodyBody", "Body", names)
    names <- sub("Body", "body_", names)
    names <- sub("Gravity", "gravity_", names)
    names <- sub("Acc", "acelerometer_", names)
    names <- sub("Gyro", "gyroscope_", names)
    names <- gsub("__", "_", names)
}

# loadData
# Read indicated data into R and add activity name and subject
loadData <- function(folder, dataType){    
    
    # load  data   
    dataSet <- read.table( paste(folder, "/", dataType, "/", "X_", dataType, ".txt", sep = "" ) )
    dataY   <- read.table( paste(folder, "/", dataType, "/", "Y_", dataType, ".txt", sep = "" ) )
    dataS   <- read.table( paste(folder, "/", dataType, "/", "subject_", dataType,".txt", sep = "" ) )
    
    # add activity names to dataset
    activities <- read.table (paste(folder, "/activity_labels.txt", sep=""))
    dataSet$activity <- merge(dataY, activities, by ="V1", all=FALSE)$V2
    
    # adds subject to dataset
    dataSet$subject <- dataS$V1
    
    return(dataSet)
    
}

# loadFeatures
# Read feature data into R
loadFeatures <- function( folder) {
    features <- read.table ( paste(folder, "/features.txt", sep=""))
    
    return( features )
}

# setColumnNames
# Assign descriptive names to data set
setColumnNames <-function(dataSet, features){
    measures <- targetColumns(features$V2)
    
    nombres <- descriptiveNames ( features[measures,2] ) 
    colnames(dataSet) <- c(nombres,"activity","subject")
    return (dataSet)
}

# issolateMeasure
# Subset by columns for mean and std 
issolateMeasures <- function( dataSet, features ){
    measures <- targetColumns(features$V2)
    ds <- dataSet[, measures]
    
    return( ds)
}

# consolidateData
# Merge data for test and train in a dataset
consolidateData <- function(folder){
    test  <- loadData(folder, "test")
    train <- loadData(folder, "train")
    
    return ( rbind(test, train) )
}

# prepareTiny
# Orchestrate process:
#   *  Get a dataSet including all data, all columns, activity name and subject
#   *  Select columns for measures wanted (mean and std)
#   *  Add columns for activity and subject to prior subset
#   *  Set descriptive names to columns
prepareData <- function(){
    mainFolder <- "UCI HAR Dataset"
    
    allData<- consolidateData(mainFolder)
    features <- loadFeatures(mainFolder)
    
    dataSet <- issolateMeasures(allData, features)
    dataSet$activity <- allData$activity
    dataSet$subject <- allData$subject
    
    dataSet<-setColumnNames(dataSet, features)
    
    return (dataSet)
}

# processTiny
# Calculate average by activity and subject
processData <- function(dataSet){
    z<-ncol(dataSet)-2
    
    return (aggregate(dataSet[,1:z],  FUN=mean, by=list(Activity=dataSet$activity, Subject=dataSet$subject )))

}


# -----------------------------------
# main
# -----------------------------------
prepareFiles()
dataSet <- prepareData()
tidyData <- processData(dataSet)
write.table(tidyData, "tidyData.txt")





    
