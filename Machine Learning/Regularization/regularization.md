[TOC]



### Recap

http://rasbt.github.io/mlxtend/user_guide/general_concepts/regularization-linear/

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k8yqdpv04ek4gz



![](https://i.loli.net/2020/05/08/e4y89CupFRdg6Bq.png)



https://en.wikipedia.org/wiki/Lasso_(statistics)#Basic_form

![](https://wikimedia.org/api/rest_v1/media/math/render/svg/26064ae92b68228debcddb264868fbf6ca23e579)

glm

minimize $\frac{1}{N}\sum \text{squared residuals}$ 

L1

minimize  $\frac{1}{N}\sum \text{squared residuals} + \lambda \vert w\vert$

L2

minimize  $\frac{1}{N}\sum \text{squared residuals} + \lambda w^2$



### Basics



cheat sheet

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-deep-learning-tips-and-tricks#regularization





![image.png](https://i.loli.net/2020/01/07/KaQhgG5uIxfD7JZ.png)

$||w_i|| = \sum|w_i|$









[Data Science - Part XII - Ridge Regression, LASSO, and Elastic Nets](https://www.youtube.com/watch?v=ipb2MhSRGdw)



![](https://i.loli.net/2020/01/14/yvnZKHfOzNgh2Uw.png)



> Understanding **constrained (penalized) form**
>
> https://stats.stackexchange.com/a/349056 
>
> [Why are additional constraint and penalty term equivalent in ridge regression?](https://math.stackexchange.com/questions/335306/why-are-additional-constraint-and-penalty-term-equivalent-in-ridge-regression)
>
> Note, regularizer's power will help you remember terminology (L1/L2)
>
> So the following image makes more sense



![](https://i.loli.net/2020/01/14/1QlrudNeyECHbTY.png)



> [Regularization Part 2: Lasso Regression](https://www.youtube.com/watch?v=NGf0voTMlcs&feature=youtu.be)
>
> That's why some people use Lasso to "eliminate" lots of useless variables (i.e. $\beta = 0$) .



![](https://i.loli.net/2020/01/14/ozXxhyCDj2ZfWTp.png)







### Intuition

Initially, we minimize the least squares of residuals when training the data which might lead to overfitting. We then introduce **bias** into model so we reduce the variance.



![image.png](https://i.loli.net/2020/03/31/7mVfX4NDtYOexk1.png)



![1.gif](https://i.loli.net/2020/03/31/HbT4F5X2NaulJmi.gif)





![image.png](https://i.loli.net/2020/04/06/ArK9akthTPLpXxO.png)





### Code

https://piazza.com/class_profile/get_resource/k1zer6tg6s04bb/k69x2ajgcw56x



### Resources



pretty detailed explanation

[Data Science - Part XII - Ridge Regression, LASSO, and Elastic Nets](https://www.youtube.com/watch?v=ipb2MhSRGdw)





[Intuitions on L1 and L2 Regularisation](https://towardsdatascience.com/intuitions-on-l1-and-l2-regularisation-235f2db4c261)

https://www.datacamp.com/community/tutorials/tutorial-ridge-lasso-elastic-net

https://drsimonj.svbtle.com/ridge-regression-with-glmnet



[Regularization Part 1: L2, Ridge Regression](https://youtu.be/Q81RR3yKn30)

[Regularization Part 2: L1, Lasso Regression](https://youtu.be/NGf0voTMlcs)

[Regularization Part 3: Elastic-Net Regression](https://youtu.be/1dKRdX9bfIo)

[Regularization Part 4: Ridge, Lasso and Elastic-Net Regression in R](https://youtu.be/ctmNq7FgbvI)

