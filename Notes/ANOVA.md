[toc]



> When you use anova(lm.1,lm.2,test="Chisq"), it performs the Chi-square test to compare lm.1 and lm.2 (i.e. it tests whether reduction in the residual sum of squares are statistically significant or not). Note that this makes sense only if lm.1 and lm.2 are nested models.
>
> From <https://stats.stackexchange.com/questions/53312/comparing-two-models-using-anova-function-in-r>
>
> The table will contain F statistics (and P values) comparing the mean square for the row to the residual mean square. 
>
> From <https://stat.ethz.ch/R-manual/R-patched/library/stats/html/anova.lm.html>





### ANOVA

https://www.stat.ncsu.edu/people/bloomfield/courses/st370/Slides/MandR-ch12-sec02-06.pdf



#### F test

https://www.rose-hulman.edu/class/ma/inlow/Math485/ftests.pdf

![image.png](https://i.loli.net/2020/05/04/Kgbl2hoRr6iEV4s.png)

### R



```R
models = list()
for (i in 1:14){
  PCnames = paste('PC',1:i,sep = '')
  model = lm(BMI ~., data = y, subset = trainidx)
  models = c(models,list(model))
}


do.call(anova,models)
```
