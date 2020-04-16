[TOC]



PCA

>Reduce dimension using the eigenpairs of covariance matrix



## Notes

### [how to apply PCA on a categorical variable?](https://piazza.com/class/k1zer6tg6s04bb?cid=443)

> Unfortunately, no. PCA is really only appropriate for real-valued features. Even ordinal features (categories with order, e.g. first, second, third, ...) shouldn't use PCA because there is a "distance" implied. Only use PCA for xi∈R.
>
> 
>
> They mention correspondence analysis, which is a method I haven't looked into myself, but here's a link to the paper information (it's from 1935): https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/connection-between-correlation-and-contingency/D3A75249B56AF5DDC436938F1B6EABD1
>
> They also mention multi-factor analysis: https://www.sciencedirect.com/science/article/pii/016794739490135X?via%3Dihub



### R code results interpretation

```R
prcomp(cov(d))

     [,1] [,2]
[1,]   -1   -2
[2,]   -1    0
[3,]    0    0
[4,]    2    1
[5,]    0    1
Standard deviations (1, .., p=2):
[1] 1.5811388 0.7071068

Rotation (n x k) = (2 x 2):
           PC1        PC2
[1,] 0.7071068  0.7071068
[2,] 0.7071068 -0.7071068
```

So you can see `Standard deviations` are the list of square root of eigenvalues

and `Rotation` or `loadings` in princomp() is the matrix of **standardized** variable loadings (i.e., a matrix whose columns contain the eigenvectors).

```R
d_cov = cov(d)
d_cov
eigen(d_cov)


     [,1] [,2]
[1,]  1.5  1.0
[2,]  1.0  1.5
eigen() decomposition
$values
[1] 2.5 0.5

$vectors
          [,1]       [,2]
[1,] 0.7071068 -0.7071068
[2,] 0.7071068  0.7071068
```



==i.e. if you want to know the rotated data on PC1==

```R
res_PC1 = d * t( prcomp(cov(d))$rotations['PC1']  )
```



![image.png](https://i.loli.net/2020/04/01/8ukylDsUcLtBITV.png)



### Does mean centering or feature scaling affect a Principal Component Analysis?

https://sebastianraschka.com/faq/docs/pca-scaling.html



### why we use covariance matrix and why we use eigenpairs?

#### Definition of covariance matrix:

https://www.bilibili.com/video/BV1aE411o7qd?p=23

https://en.wikipedia.org/wiki/Covariance_matrix#Definition



![](https://wikimedia.org/api/rest_v1/media/math/render/svg/83bec85f5e2cab5d3406677dd806e554a442331f)

**Projected distance**

$\vec{a}*\vec{b} = \vert \vec{a}\vert * \vert \vec{b}\vert * cos\theta$

which is equal to  $\vec{a}^T * \vec{b}$ 







Note we denote $S$ as covariance matrix

![Intuition.png](https://i.loli.net/2020/02/04/bIoVxSOyY9CeNKP.png)

### Loadings vs eigenvectors

https://stats.stackexchange.com/a/143949



$$
\text { Loadings }=\text { Eigenvectors } \cdot \sqrt{\text { Eigenvalues }}
$$



## Example

![2020-03-31_153826.png](https://i.loli.net/2020/04/01/ZN8SwyXPhOUaB2W.png)

## Code

### R

R code for the above example

```R
# all features on top
d = matrix(c(-1,-1,0,2,0,-2,0,-0,1,1),ncol = 2)
d
pca_res = prcomp(d)
pca_res
```

```R
     [,1] [,2]
[1,]   -1   -2
[2,]   -1    0
[3,]    0    0
[4,]    2    1
[5,]    0    1
Standard deviations (1, .., p=2):
[1] 1.5811388 0.7071068

Rotation (n x k) = (2 x 2):
           PC1        PC2
[1,] 0.7071068  0.7071068
[2,] 0.7071068 -0.7071068
```

> sdev	
> the standard deviations of the principal components (i.e., the square roots of the eigenvalues of the covariance/correlation matrix, though the calculation is actually done with the singular values of the data matrix).



Verification:

```R
# covariance matrix
d_cov = cov(d)
d_cov
eigen(d_cov)
```



```R
     [,1] [,2]
[1,]  1.5  1.0
[2,]  1.0  1.5
eigen() decomposition
$values
[1] 2.5 0.5

$vectors
          [,1]       [,2]
[1,] 0.7071068 -0.7071068
[2,] 0.7071068  0.7071068
```



==Note it is different from the Example b/c  we are using formula==

$cov(x,y) = \frac{1}{N-1} Z^TZ$

instead of

$cov(x,y) = \frac{1}{N} Z^TZ$

So in the example it is $1/5 * Z^TZ$ while in code it is $1/4 * Z^TZ$



### Python

[how to do it in python mechanically](https://sebastianraschka.com/Articles/2015_pca_in_3_steps.html#a-summary-of-the-pca-approach)

https://github.com/heucoder/dimensionality_reduction_alo_codes/blob/master/codes/PCA/PCA.py#L13

## Resources



https://www.bilibili.com/video/av70839977?p=24

[STATQUEST Principal Component Analysis (PCA) Step-by-Step](https://youtu.be/FgakZw6K1QQ)

https://www.cnblogs.com/pinard/p/6239403.html

http://blog.codinglabs.org/articles/pca-tutorial.html

https://www.zhihu.com/question/30094611

[eigenvalues/eigenvectors](http://setosa.io/ev/eigenvectors-and-eigenvalues/)

[Understanding the Role of Eigenvectors and Eigenvalues in PCA Dimensionality Reduction.](https://medium.com/@dareyadewumi650/understanding-the-role-of-eigenvectors-and-eigenvalues-in-pca-dimensionality-reduction-10186dad0c5c)















