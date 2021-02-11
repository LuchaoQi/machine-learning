[TOC]



[Nested versus non-nested cross-validation](https://scikit-learn.org/stable/auto_examples/model_selection/plot_nested_cross_validation_iris.html#nested-versus-non-nested-cross-validation)



### Notes



![](https://mmbiz.qpic.cn/mmbiz_png/vI9nYe94fsELq5sxjyoM3Z34rxtvMsLkJSkDkiaYhpiafe9beykXiaD8jS7HN1rTIC7MbicyFib1cf8Jibib5F0hibibMJA/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)







Another example of calculating R-squared in cross validation

==Pretty good R tutorial==

https://quantdev.ssri.psu.edu/tutorials/cross-validation-tutorial



```R
model_caret

##   RMSE      Rsquared 
##   3.681462  0.4228643

model_caret$resample

##       RMSE  Rsquared Resample
## 1 3.474389 0.4336992    Fold1
## 2 3.387723 0.4919501    Fold2
## 3 3.608666 0.4109997    Fold3
## 4 3.948821 0.3349530    Fold4
## 5 3.987709 0.4427193    Fold5
```



==0.4228643 = mean(ols_model\$resample$Rsquared)==



```R
mean(ols_model$resample$Rsquared)
ols_model$results$Rsquared

[1] 0.8613019
[1] 0.8613019
```



### Code

[Cross-Validation Essentials in R](http://www.sthda.com/english/articles/38-regression-model-validation/157-cross-validation-essentials-in-r/)



[How to explain caret results](https://stackoverflow.com/a/52519212)



**1)The `ols_model$results` above is based on the ==mean== of each of the different resampling below:**

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



CV in NHANES project

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



### Resources

STATQUEST

[Machine Learning Fundamentals: Cross Validation](https://www.youtube.com/watch?v=fSytzGwwBVw&feature=youtu.be)

