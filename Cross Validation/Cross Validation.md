# Cross-Validation

> Cross validation uses every block of data (k-fold cross validation)one at a time as test data and summarizes the results at the end.

### Resources

STATQUEST

[Machine Learning Fundamentals: Cross Validation](https://www.youtube.com/watch?v=fSytzGwwBVw&feature=youtu.be)



#### Code

[Cross-Validation Essentials in R](http://www.sthda.com/english/articles/38-regression-model-validation/157-cross-validation-essentials-in-r/)



[How to explain caret results](https://stackoverflow.com/a/52519212)

**1)The `ols_model$results` above is based on the mean of each of the different resampling below:**

**2)The model is trained on the whole training set.** You can check this with either using `lm` or specify `method = "none"` for the `trainControl`.

```R
library("caret")
my_data <- iris

k10_cv <- trainControl(method="cv", number=10)

set.seed(100)
ols_model <- train(Sepal.Length ~  Sepal.Width + Petal.Length + Petal.Width,
                   data = my_data, trControl = k10_cv, method = "lm")
> ols_model$results
  intercept      RMSE  Rsquared       MAE     RMSESD RsquaredSD      MAESD
1      TRUE 0.3173942 0.8610242 0.2582343 0.03881222 0.04784331 0.02960042

> mean(ols_model$resample$RMSE)==ols_model$results$RMSE
[1] TRUE
> mean(ols_model$resample$Rsquared)==ols_model$results$Rsquared
[1] TRUE

ols_model$finalModel

```





Some code I used to select models using different features in cross-validation

```R
rm(list = ls())
load(file = 'analyticData.rda')

res_RMSE = c()
res_Rsquared = c()
if(F){
for(i in 1:50){
  PCnames = paste('PC',1:i,sep = '')
  train.control <- trainControl(method = "cv", number = 10)
  dat = analyticData[,c('RIDAGEYR','Race','Gender','BMI',PCnames)]
  model <- caret::train(BMI ~., data = dat, method = "lm",
               trControl = train.control)
  res_RMSE = c(res_RMSE, model$results$RMSE)
  res_Rsquared = c(res_Rsquared, model$results$Rsquared)
  
}
  save(res_RMSE,res_Rsquared, file = 'CV_50PCs.rda')
}

load(file = 'CV_50PCs.rda')
g1 = ggplot(data.frame(res_RMSE)) + 
  aes(x = 1:length(res_RMSE), y = res_RMSE) +
  geom_line()+
  # geom_smooth(se = TRUE, method = 'lm')+
  geom_smooth(se = TRUE, method =  'auto',color = 'blue') +
  labs(x = 'Number of Principal Components Used in Cross-Validation',y = 'Root Mean Square Error ')

g2 = ggplot(data.frame(res_Rsquared)) + 
  aes(x = 1:length(res_Rsquared), y = res_Rsquared) +
  geom_line()+
  # geom_smooth(se = TRUE, method = 'lm')+
  geom_smooth(se = TRUE, method =  'auto',color = 'blue') + 
  labs(x = 'Number of Principal Components Used in Cross-Validation',y = 'R-squared')

which(res_RMSE==min(res_RMSE))
which(res_Rsquared==max(res_Rsquared))
gridExtra::grid.arrange(g1,g2)
```

