source("LogisticRegressionUtils.R")

#reading testing set data
logisticRegressionTestingSet <- readRDS("LogisticRegressionTestingSet.RDS")

#feature scaling
logisticRegressionTestingSet[-3] = scale(logisticRegressionTestingSet[-3])

#reading LogisticRegression model
logisticRegressionModel = readRDS("LogisticRegressionModel.RDS")

#predicting testing set result.
prob_pred = predict(logisticRegressionModel, type = "response" ,newdata = logisticRegressionTestingSet[-3])

y_pred = ifelse(prob_pred > 0.5, 1, 0)

#Saving prediced values for testing set
saveLogisticRegressionPredictedValuesForTestingSet(y_pred)

y_pred
