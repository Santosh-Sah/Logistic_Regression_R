source("LogisticRegressionUtils.R")

#reading training set 
logisticRegressionTrainingSet <- readRDS("LogisticRegressionTrainingSet.RDS")

#feature scaling
logisticRegressionTrainingSet[-3] = scale(logisticRegressionTrainingSet[-3])

# Fitting Logistic Regression to the Training set
LogisticRegression = glm(formula = Purchased ~ .,
                         family = binomial,
                         data = logisticRegressionTrainingSet)

#saving LogisticRegression model
saveLogisticRegressionModel(LogisticRegression)
