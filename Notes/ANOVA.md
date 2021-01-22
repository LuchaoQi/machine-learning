[toc]

### one-way ANOVA test

http://www.sthda.com/english/wiki/one-way-anova-test-in-r



![](https://i.loli.net/2020/10/19/pYHmCNSdFMI5POj.png)



### anova() in R: nested models comparison

> When you use anova(lm.1,lm.2,test="Chisq"), it performs the Chi-square test to compare lm.1 and lm.2 (i.e. it tests whether reduction in the ==residual sum of squares== are statistically significant or not). Note that this makes sense only if lm.1 and lm.2 are nested models.
>
> From <https://stats.stackexchange.com/questions/53312/comparing-two-models-using-anova-function-in-r>
>
> The table will contain F statistics (and P values) comparing the mean square for the row to the residual mean square. 
>
> From <https://stat.ethz.ch/R-manual/R-patched/library/stats/html/anova.lm.html>





#### F test



[How the F test works to compare models](https://www.graphpad.com/guides/prism/latest/curve-fitting/reg_howtheftestworks.htm)



https://www.stat.ncsu.edu/people/bloomfield/courses/st370/Slides/MandR-ch12-sec02-06.pdf



[==F-tests and Nested Models==](https://www.rose-hulman.edu/class/ma/inlow/Math485/ftests.pdf)



![](https://i.loli.net/2021/01/12/gAL9bSU3ecdt2oX.png)





![](https://i.loli.net/2020/05/04/Kgbl2hoRr6iEV4s.png)



### R

http://www.sthda.com/english/wiki/one-way-anova-test-in-r

```R
# Compute the analysis of variance
res.aov <- aov(weight ~ group, data = my_data)
# Summary of the analysis
summary(res.aov)
```



```R
models = list()
for (i in 1:14){
  PCnames = paste('PC',1:i,sep = '')
  model = lm(BMI ~., data = y, subset = trainidx)
  models = c(models,list(model))
}


do.call(anova,models)
```

