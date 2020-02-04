# PCA

>Reduce dimension using the eigenpairs of covariance matrix

## Resources



https://www.bilibili.com/video/av70839977?p=24

[Principal Component Analysis (PCA) Step-by-Step](https://youtu.be/FgakZw6K1QQ)

https://www.cnblogs.com/pinard/p/6239403.html

http://blog.codinglabs.org/articles/pca-tutorial.html

https://www.zhihu.com/question/30094611

[eigenvalues/eigenvectors](http://setosa.io/ev/eigenvectors-and-eigenvalues/)

[Understanding the Role of Eigenvectors and Eigenvalues in PCA Dimensionality Reduction.](https://medium.com/@dareyadewumi650/understanding-the-role-of-eigenvectors-and-eigenvalues-in-pca-dimensionality-reduction-10186dad0c5c)







## Notes



### Does mean centering or feature scaling affect a Principal Component Analysis?

https://sebastianraschka.com/faq/docs/pca-scaling.html



### why we use covariance matrix and why we use eigenpairs?

Note $S$ is our covariance matrix

![Intuition.png](https://i.loli.net/2020/02/04/bIoVxSOyY9CeNKP.png)

### Loadings vs eigenvectors

https://stats.stackexchange.com/a/143949



$$
\text { Loadings }=\text { Eigenvectors } \cdot \sqrt{\text { Eigenvalues }}
$$



## Example

![Example.png](https://i.loli.net/2020/02/04/4dq3P7RMZXButlK.png)

## Code

[how to do it in python mechanically](https://sebastianraschka.com/Articles/2015_pca_in_3_steps.html#a-summary-of-the-pca-approach)

https://github.com/heucoder/dimensionality_reduction_alo_codes/blob/master/codes/PCA/PCA.py#L13















