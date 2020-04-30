source("LogisticRegressionUtils.R")

#reading LogisticRegression model
logisticRegressionModel = readRDS("LogisticRegressionModel.RDS")

#reading testing set data
logisticRegressionTestingSet <- readRDS("LogisticRegressionTestingSet.RDS")

#reading predicted values of the testing set
logisticRegressionPredictedValuesForTestingSet <- readRDS("LogisticRegressionPredictedValuesForTestingSet.RDS")

logisticRegressionConfusionMatrix = table(logisticRegressionTestingSet[, 3], logisticRegressionPredictedValuesForTestingSet > 0.5)

logisticRegressionConfusionMatrix

# FALSE TRUE
# 0    59    5
# 1     9   27
