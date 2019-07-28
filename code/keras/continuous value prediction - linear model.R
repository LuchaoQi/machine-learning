# Repeat the previous prediction of log(rdi4p + 1) using a standard feed forward neural network with multiple layers.

library(tidyverse)
library(keras)

dat = read.table("shhs1.txt", header = TRUE)

analyticDat = dat %>%
  select(rdi4p, waist, COPD15, HTNDerv_s1, gender, age_s1, bmi_s1)%>%
  # select(rdi4p, waist, smokstat_s1, HTNDerv_s1, gender, age_s1, bmi_s1) %>%
  na.omit()



y = log(analyticDat$rdi4p + 1)
x = analyticDat %>% select(-rdi4p) %>% as.matrix()

trainIdx = sample(c(TRUE, FALSE), length(y), replace = TRUE, prob = c(.7, .3))

ytrain = y[trainIdx]
xtrain = x[trainIdx, ] %>% scale()
# scale(matrix(1:12,nrow = 3,byrow = T))

mns = attr(xtrain, "scaled:center")
sds = attr(xtrain, "scaled:scale")

xtest = x[!trainIdx, ] %>% scale(center = mns, scale = sds)
ytest = y[!trainIdx]

model = keras_model_sequential() %>%
  layer_dense(units = 4, activation = "relu",
              use_bias = TRUE,
              input_shape = dim(xtrain)[2]) %>%
  layer_dense(units = 2, activation = "relu") %>%
  layer_dense(units = 1)


model %>% compile(
  loss = "mse",
  optimizer = optimizer_rmsprop(),
  metrics = list("mean_absolute_error")
)


history = model %>% fit(
  xtrain,
  ytrain,
  epochs = 20,
  validation_split = 0.2,
  verbose = 1,
)

 ## compare with the test data
yPred = model %>% predict(xtest)

## plot
plot(yPred[,1], ytest)
cor(yPred[,1], ytest)

## compare with ordinary regression
fit = lm(ytrain ~ xtrain)
yPred2 =  cbind(1, xtest) %*% coef(fit)
plot(yPred2, ytest)
cor(yPred2, ytest)
