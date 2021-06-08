[toc]



### Deriving the Least Square Estimates of $\beta_{0}$ and $\beta_{1}$

https://www.youtube.com/watch?v=ewnc1cXJmGA&ab_channel=jbstatistics

https://www.amherst.edu/system/files/media/1287/SLR_Leastsquares.pdf

<img src="https://i.ibb.co/NmznfvN/image.png" alt="image" border="0">

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

