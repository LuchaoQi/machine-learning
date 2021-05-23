[toc]





### Assumptions of linear regression model

1. Linear relationship
2. iid Variables are normally distributed
3. homoscedasticity - iid residuals / errors are likely to be normally distributed

### Explaining GLM outputs in R (RSS/R2/F VALUE) with formula

https://stats.stackexchange.com/a/172161



### R Code

```R
set.seed(111)
trainidx = sample(nrow(y),0.7*nrow(y))
fit = lm(BMI ~ .,data = y, subset = trainidx)
```





### ISLR Linear Regression Notes

![image.png](https://i.loli.net/2020/01/15/DEcGNW9MmOtoKd5.png)

