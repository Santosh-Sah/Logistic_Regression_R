importLogisticRegressionDataset <- function(logisticRegressionDatasetFileName) {
  
  #importing dataset
  logisticRegressionDataset = read.csv(logisticRegressionDatasetFileName)
  
  #getting the required columns
  logisticRegressionDataset = logisticRegressionDataset[3:5]
  
  #encoding target feature as factor
  logisticRegressionDataset$Purchased = factor(logisticRegressionDataset$Purchased, levels = c(0, 1))
  
  #splitting the dataset into training set and testing set
  library(caTools)
  set.seed(1234)
  
  logisticRegressionDatasetSlpit = sample.split(logisticRegressionDataset$Purchased, SplitRatio = 0.75)
  
  logisticRegressionTrainingSet = subset(logisticRegressionDataset, logisticRegressionDatasetSlpit == TRUE)
  
  logisticRegressionTestingSet = subset(logisticRegressionDataset, logisticRegressionDatasetSlpit == FALSE)
  
  
  returnList <- list(logisticRegressionTrainingSet, logisticRegressionTestingSet)
  
  return (returnList)
  
}

#saving training and testing set
saveTrainingAndTestingDataset <- function(logisticRegressionTrainingSet, logisticRegressionTestingSet){
  
  saveRDS(logisticRegressionTrainingSet, file = "LogisticRegressionTrainingSet.RDS")
  saveRDS(logisticRegressionTestingSet, file = "LogisticRegressionTestingSet.RDS")
  
}

#Save LogisticRegression Model
saveLogisticRegressionModel <- function(logisticRegressionModel) {
  
  saveRDS(logisticRegressionModel, file = "LogisticRegressionModel.RDS")
}

#Save prediced values for testing set
saveLogisticRegressionPredictedValuesForTestingSet <- function(logisticRegressionPredictedValuesForTestingSet) {
  
  saveRDS(logisticRegressionPredictedValuesForTestingSet, file = "LogisticRegressionPredictedValuesForTestingSet.RDS")
}
