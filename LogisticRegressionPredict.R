source("LogisticRegressionUtils.R")

#reading LogisticRegression model
logisticRegressionModel = readRDS("LogisticRegressionModel.RDS")

inputValue <- data.frame(Age = c(28,30), EstimatedSalary = c(43000,30000))
inputValue[, 1:2] = scale(inputValue[, 1:2])


#predicting testing set result.
prob_pred = predict(logisticRegressionModel, type = 'response', newdata = inputValue)

y_pred = ifelse(prob_pred > 0.5, 1, 0)

y_pred
