source("LogisticRegressionUtils.R")

logisticRegressionDatasetList <- importLogisticRegressionDataset("Logistic_Regression_Social_Network_Ads.csv")

saveTrainingAndTestingDataset(logisticRegressionDatasetList[[1]], logisticRegressionDatasetList[[2]])
