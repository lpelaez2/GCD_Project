
downloadFiles <- function(){
    sourceFile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip?accessType=DOWNLOAD"
    targetFile <- "getdata_projectfiles_UCI_HAR_Dataset.zip"
    download.file(sourceFile, destfile=targetFile, method="auto", mode="wb")
    unzip (targetFile, exdir = ".", overwrite = TRUE )
    
}


readFile <- function ( folderName, fileName ){
    return(read.table( paste(folderName, "/", fileName, sep = "")))
}


targetColumns <- function( measures ){
    colNum1 <- grep ("mean\\(\\)\\-[XYZ]", measures)
    colNum2 <- grep ("std\\(\\)\\-[XYZ]",  measures)
    
    return( sort( union(colNum1, colNum2) ) )
    
}


# Changes feature names to be descriptive 
descriptiveNames <- function (measures){
    names <- gsub("-", "_", measures)
    names <- gsub("\\(","", names)
    names <- gsub("\\)","", names)
    names <- sub("^t", "time_", names)
    names <- sub("^f", "freq_", names)
    names <- sub("Body", "body_", names)
    names <- sub("Gravity", "gravity_", names)
    names <- sub("Acc", "acelerometer_", names)
    names <- sub("Gyro", "gyroscope_", names)
    names <- gsub("__", "_", names)
}

summarizedData <- function(){
    
    mainFolder <- "UCI HAR Dataset"
    
    # load activity labels
    activities <- readFile (mainFolder, "activity_labels.txt")
    
    # load features 
    features <- readFile (mainFolder, "features.txt")
    measures <- targetColumns(features$V2)
    colNames <- descriptiveNames ( features[measures,2] )  
    colNames <- c("activity_name", colNames)
    
    
    # load test data
    testX <- readFile( paste(mainFolder, "/test/", sep=""), "X_test.txt" )
    testY <- readFile( paste(mainFolder, "/test/", sep=""), "Y_test.txt" )
    
    # load train data
    trainX <- readFile( paste(mainFolder, "/train/", sep=""), "X_train.txt" )
    trainY <- readFile( paste(mainFolder, "/train/", sep=""), "Y_train.txt" )
    
    
    # 
    testSet <- cbind( merge(testY, activities, by.x="V1", by.y="V1", all=FALSE)$V2, testX[,measures] )
    colnames(testSet) <- colNames
    
    trainSet <- cbind( merge(trainY, activities, by.x="V1", by.y="V1", all=FALSE)$V2, trainX[,measures] )
    colnames(trainSet) <- colNames
    
   return( rbind(data.frame(testSet), data.frame(trainSet)))
     
}


downloadFiles()

tidyData <- summarizedData()
write.table(tidyData, "tidy.txt")





    
