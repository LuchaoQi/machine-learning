rm(list = ls())
library(tidyverse)
library(keras)


dat = read.table("shhs1.txt", header = TRUE)

analyticDat = dat %>%
  select(rdi4p, waist, COPD15, HTNDerv_s1, gender, age_s1, bmi_s1) %>%
  na.omit()



y = analyticDat$HTNDerv_s1
y = cbind(y, 1 - y)
x = analyticDat %>% select(-HTNDerv_s1) %>% as.matrix()

trainIdx = sample(c(TRUE, FALSE), dim(x)[1], replace = TRUE, prob = c(.7, .3))

ytrain = y[trainIdx, ]
xtrain = x[trainIdx, ] %>% scale()

mns = attr(xtrain, "scaled:center")
sds = attr(xtrain, "scaled:scale")

xtest = x[!trainIdx, ] %>% scale(center = mns, scale = sds)
ytest = y[!trainIdx, ]

model = keras_model_sequential() %>%
  layer_dense(units = 2^8, activation = "relu",
              use_bias = TRUE,
              input_shape = dim(xtrain)[2]) %>%
  layer_dropout(rate = .8) %>%
  layer_dense(units = 2 ^ 4, activation = "relu") %>%
  layer_dropout(rate = .8) %>%
  layer_dense(units = 2, activation = "softmax")


model %>% compile(
  loss = "categorical_crossentropy",
  optimizer = optimizer_rmsprop(),
  metrics = list("accuracy")
)


history = model %>% fit(
  xtrain,
  ytrain,
  epochs = 30,
  validation_split = 0.2,
  verbose = 1,
)

## compare with the test data


## predict classes gives the index (counting from 0) 
## of the category. So, it gives 1 for the second column (which is HTN=0)
## and 0 for the first column (which is HTN=1). So to get it to agree
## I 1 - the output
yPred = 1 - (model %>% predict_classes(xtest))

## loot at the comaprison
ptab = table(yPred, ytest[,1])
ptab
## accuracy
sum(diag(ptab)) / sum(ptab)


## compare with ordinary logistic regression
fit = glm(HTNDerv_s1 ~ ., family = "binomial", data = analyticDat, subset = trainIdx)
yPred2 =  (predict(fit, analyticDat[!trainIdx,], type = "response") > 0.5) * 1

ptab2 = table(yPred2, ytest[,1])
sum(diag(ptab2)) / sum(ptab2)
