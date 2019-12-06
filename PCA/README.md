# PCA

>Reduce dimension using the eigenpairs of covariance matrix



After centering the data, we want to maximize the projected variance




$$
\begin{aligned} J &=\frac{1}{N} \sum_{i=1}^{N}\left(\left(x_{i}-\bar{x}\right)^{\top} u_{1}\right)^{2} \quad \text { s.t. } u_{1}^{\top} u=1 \\ &=\sum_{i=1}^{N} \frac{1}{n} u_{1}^{\top}\left(x_{i}-\bar{x}\right) \cdot\left(x_{i}-\bar{x}\right)^{\top} u_{1} \\ &=u_{1}^{\top}\left(\sum_{i=1}^{N} \frac{1}{n}\left(x_{i}-\bar{x}\right) \cdot\left(x_{i}-\bar{x}\right)^{\top}\right) u_{1} \\ &=u_{i}^{\top} \cdot s \cdot u_{1} \end{aligned}
$$




[Principal Component Analysis (PCA) Step-by-Step](https://youtu.be/FgakZw6K1QQ)

https://www.cnblogs.com/pinard/p/6239403.html

http://blog.codinglabs.org/articles/pca-tutorial.html

https://www.zhihu.com/question/30094611

[eigenvalues/eigenvectors](http://setosa.io/ev/eigenvectors-and-eigenvalues/)

[Understanding the Role of Eigenvectors and Eigenvalues in PCA Dimensionality Reduction.](https://medium.com/@dareyadewumi650/understanding-the-role-of-eigenvectors-and-eigenvalues-in-pca-dimensionality-reduction-10186dad0c5c)



## Intuitions

Does mean centering or feature scaling affect a Principal Component Analysis?

https://sebastianraschka.com/faq/docs/pca-scaling.html

why we use covariance matrix?



why we use eigenpairs?





## Example

it seems github has problem rendering latex so I used img here

![](https://github.com/LuchaoQi/machine-learning/blob/master/PCA/pca.png?raw=true)



## Python

[how to do it in python mechanically](https://sebastianraschka.com/Articles/2015_pca_in_3_steps.html#a-summary-of-the-pca-approach)

https://github.com/heucoder/dimensionality_reduction_alo_codes/blob/master/codes/PCA/PCA.py#L13















