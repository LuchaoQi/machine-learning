[toc]

## Posts



[Exploring Bayesian Optimization](https://distill.pub/2020/bayesian-optimization/)

[通俗理解贝叶斯优化](https://mp.weixin.qq.com/s/VEMG7e0D9Q1OwRE6wAxrsA)



## Bayesian



![](https://i.loli.net/2020/01/14/UrCKEOn6DuXwdIL.png)



*后验概率与先验概率(Beta distribution)和相似度(Likelihood)的乘积成正比*



## Likelihood

Let $X$ be a discrete [random variable](https://en.wikipedia.org/wiki/Random_variable) with [probability mass function](https://en.wikipedia.org/wiki/Probability_mass_function) $p$ depending on a parameter $\theta$ Then the function

$\mathcal{L}(\theta \mid x) = p_\theta (x) = P_\theta (X=x)$

helps estimate the parameter $\theta$ based on given x

### MLE recall

我们假设一个distribution with unknown parameters i.e. $\theta$ 

然后根据sampling distribution把sampled x代入假设的distribution

得到关于$\theta$的likelihood方程求导即可

![image.png](https://i.loli.net/2020/01/14/RpJxmaFH7y4NX1g.png)

### Intuition / example

[<mark> seeing theory</mark>](https://seeing-theory.brown.edu/bayesian-inference/)

[Examples](https://en.wikipedia.org/wiki/Maximum_likelihood_estimation#Examples)

[投硬币例子 - Discrete distribution](https://en.wikipedia.org/wiki/Maximum_likelihood_estimation#Discrete_distribution,_finite_parameter_space)

[How to derive the likelihood and loglikelihood of the poisson distribution ](https://math.stackexchange.com/questions/2399613/how-to-derive-the-likelihood-and-loglikelihood-of-the-poisson-distribution)



## [如何理解先验概率与后验概率](https://zhuanlan.zhihu.com/p/26464206)



![](https://i.loli.net/2020/05/15/Wrw7Yndz8CxakyD.png)





## <mark>[Bayesian Statistics explained to Beginners in Simple English](https://www.analyticsvidhya.com/blog/2016/06/bayesian-statistics-beginners-simple-english/)</mark>



### what if one has no previous experience? what if we don't know prior distribution? 



![](https://i.loli.net/2020/05/15/lx8BebwDd4j7A5v.png)





![](https://i.loli.net/2020/05/18/yFaHJRXlKf4USg5.png)





https://seeing-theory.brown.edu/bayesian-inference/



![image.png](https://i.loli.net/2020/01/14/QI453BDpgaZivc2.png)









