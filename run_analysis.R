
# as sayed in the task I need a script "that can be run as long as the Samsung data is in your working directory."
# so I assume that there is "UCI HAR Dataset.zip" file in the current working directory of R


# Step 0: unzip data
if (! './UCI HAR Dataset' %in% list.dirs()) {
	unzip('UCI HAR Dataset.zip')
}

# Task 1: "Merges the training and the test sets to create one data set"

# Step 1: Combining separately test and train data.

combineVariables = function(pathToSampleFolder, nrows = -1) {
	getLastFolder = function(path) {
		folders = strsplit(path, '/')
		folders[[1]][length(folders[[1]])]
	}
	trainOrTest = getLastFolder(pathToSampleFolder)
	
	subjFilePath = paste(pathToSampleFolder, '/subject_', trainOrTest, '.txt', sep = '')
	XFilePath = paste(pathToSampleFolder, '/X_', trainOrTest, '.txt', sep = '')
	yFilePath = paste(pathToSampleFolder, '/y_', trainOrTest, '.txt', sep = '')
	originMeasurementFiles = list.files(path = paste(pathToSampleFolder, '/Inertial Signals', sep = ''), full.names = T)
	
	subjData = read.table(subjFilePath, nrows = nrows)
	XData = read.table(XFilePath, nrows = nrows)
	yData = read.table(yFilePath, nrows = nrows)
	
	names(subjData) = 'subject'
	names(yData) = 'yOutcome'
	names(XData) = as.character(seq(1:ncol(XData)))
	
	originMeasurementData = do.call(cbind.data.frame, sapply(originMeasurementFiles, read.table, nrows = nrows))
	names(originMeasurementData) = seq(from = ncol(XData) + 1, to = ncol(XData) + ncol(originMeasurementData))
	
	combinedData =  cbind(subjData, yData, XData, originMeasurementData)
	
	combinedData
}

# Step 2: Combining test and train data from previous step into one dataset

uniteTrainAndTestSamples = function(nrows = -1) {
	testData = combineVariables('UCI HAR Dataset/test', nrows = nrows)
	trainData = combineVariables('UCI HAR Dataset/train', nrows = nrows)
	
	rbind(testData, trainData)
}

unitedData = uniteTrainAndTestSamples()

# Step 3: Processing features.txt file

featureNames = read.table('UCI HAR Dataset/features.txt', stringsAsFactor = F)
# assigning temporary working names here.
names(featureNames) = c('featureId', 'featureName')

# we no need measurements with names like ...-meanFreq()-.. because this is mean frequency and no just mean 
# of measurement so I need to add [(] at the end of regular expression 
# to take only measurements like: ...-mean(... and ...-std(...
featureNames = featureNames[grepl('-(mean|std)[(]', featureNames[, 'featureName']), ]

neededFeatureColNames = as.character(featureNames[, 'featureId'])

# Step 4: Deleting no needed colums from the combined data set

unitedData = unitedData[,c('subject', 'yOutcome', neededFeatureColNames)]


# Task 3: "Uses descriptive activity names to name the activities in the data set."
# Step 5: Loading data from the activity_labels.txt file
activityLabels = read.table('UCI HAR Dataset/activity_labels.txt')
names(activityLabels) = c('actId', 'actDescription')

# Step 6: Replacing current activity column by the one with descriptive names
unitedData = merge(unitedData, activityLabels, by.x = 'yOutcome', by.y = 'actId')
unitedData = unitedData[, c('subject', 'actDescription', neededFeatureColNames)]

# Task 4: "Appropriately labels the data set with descriptive variable names."

getReadableName = function(strings) {
# Step 7: Making of various string transformations
	strings = gsub('^t', 'TimeSeriesOf', strings)
	strings = gsub('^f', 'FrequencyDomainSignalsOf', strings)
	strings = gsub('Acc', 'Accelerometer', strings)
	strings = gsub('Mag', 'Magnitude', strings)
	strings = gsub('Gyro', 'Gyroscope', strings)
	strings = gsub('X$', 'OfX', strings)
	strings = gsub('Y$', 'OfY', strings)
	strings = gsub('Z$', 'OfZ', strings)
	strings = gsub('mean[(][)]', 'MeanValueOf', strings)
	strings = gsub('std[(][)]', 'StandartDeviationOf', strings)
	# removing typo of double Body. It is typo because in "features_info.txt" there are no such variables 
	# but are variables without double Body i.e. "fBodyAccJerkMag" instead of "fBodyBodyAccJerkMag"
	strings = gsub('BodyBody', 'Body', strings)

# Step 8: Putting function name onto the first place of the column name
	# I also want to reorder words in the names of columns in such a wat that function name goes first.
	stringsList =  strsplit(strings, '-')
	sapply(stringsList, function(x) {
				measurementName = x[1]
				funcName = ifelse(is.na(x[2]), '', x[2]) 
				axis = ifelse(is.na(x[3]), '', x[3])
				paste(funcName, measurementName, axis, sep = '')
			})
}
featureNames[, 'readableName'] = getReadableName(featureNames[, 'featureName'])

# Step 9: Setting new column names for the combined dataset

# Since both feature names and measurement in unitedData goes in the same order, 
# because incoming data set orginized in that way and I havn't ruin it anywhere above,
# now I can set appropriate column names in the next way
colnames(unitedData) = c('SubjectIdentifier', 'ActivityType', featureNames[, 'readableName'])


# Task 5: "From the data set in step 4, creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject."

# Step 10: Creating a tidy dataset with avereged columns by groups of pairs of 'Subject identifier' and 'activity'
library('dplyr')
tidyData = unitedData %>% group_by(SubjectIdentifier, ActivityType) %>% summarise_each(funs(mean))

# Step 11: write the tidy data set into a file
write.table(tidyData, 'tidyData.txt', row.name=FALSE)



