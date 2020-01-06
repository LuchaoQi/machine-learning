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



**Does mean centering or feature scaling affect a Principal Component Analysis?**

https://sebastianraschka.com/faq/docs/pca-scaling.html



**why we use covariance matrix and why we use eigenpairs?**

Note $S$ is our covariance matrix



![](https://github.com/LuchaoQi/machine-learning/blob/master/PCA/Intuition.png?raw=true)





## Example



centering the data before PCA



e.g. we have five 2-D data points after centering



$$
A = \begin{pmatrix}
-1 & -1 & 0 & 2 & 0\\
-2 & 0 & 0 & 1 & 1
\end{pmatrix}
$$


then we calculate covariance matrix


$$
\begin{align*}
C = \frac{1}{5} * \begin{pmatrix}-1 & -1 & 0 & 2 & 0 \\
-2 & 0  & 0 & 1 & 1\end{pmatrix} * \begin{pmatrix}-1 & -2 \\ -1 & 0 \\ 0 & 0 \\ 2 & 1 \\ 0 & 1\end{pmatrix} = \begin{pmatrix} \frac{6}{5} & \frac{4}{5} \\ \frac{4}{5} & \frac{6}{5}\end{pmatrix}
\end{align*}
$$



eigenvalues/eigenvectors


$$
\begin{array}{c}{\lambda_{1}=2, \lambda_{2}=2 / 5} \\ {c_{1}\left(\begin{array}{c}{1} \\ {1}\end{array}\right), c_{2}\left(\begin{array}{c}{-1} \\ {1}\end{array}\right)}\end{array}
$$


sort the eigenvectors based on eigenvalues and cast them into a new matrix so eigenvectors in row
$$
P=\left(\begin{array}{cc}{1 } & {1 } \\ {-1} & {1 }\end{array}\right)
$$


standardized eigenvector matrix


$$
P=\left(\begin{array}{cc}{1 / \sqrt{2}} & {1 / \sqrt{2}} \\ {-1 / \sqrt{2}} & {1 / \sqrt{2}}\end{array}\right)
$$


which has the following feature


$$
P C P^{\top}=\left(\begin{array}{cc}{1 / \sqrt{2}} & {1 / \sqrt{2}} \\ {-1 / \sqrt{2}} & {1 / \sqrt{2}}\end{array}\right)\left(\begin{array}{cc}{6 / 5} & {4 / 5} \\ {4 / 5} & {6 / 5}\end{array}\right)\left(\begin{array}{cc}{1 / \sqrt{2}} & {-1 / \sqrt{2}} \\ {1 / \sqrt{2}} & {1 / \sqrt{2}}\end{array}\right)=\left(\begin{array}{cc}{2} & {0} \\ {0} & {2 / 5}\end{array}\right)
$$

use the first line (`first eigenvector/largest eigenvalue`)

project the original data points into new coordinate
$$
Y = \begin{pmatrix}-1 & -2 \\-1 & 0 \\0 & 0 \\2 & 1 \\0 & 1\end{pmatrix}\left( \dfrac {1}{\sqrt {2}}\dfrac {1}{\sqrt {2}}\right) = \begin{pmatrix}-3/\sqrt {2} \\-1/\sqrt {2} \\0 \\3\sqrt {2} \\-1/\sqrt {2}\end{pmatrix}
$$
which is same as the equation below
$$
Y=\left(\begin{array}{cc}{1 / \sqrt{2}} & {1 / \sqrt{2}}\end{array}\right)\left(\begin{array}{ccccc}{-1} & {-1} & {0} & {2} & {0} \\ {-2} & {0} & {0} & {1} & {1}\end{array}\right)=\left(\begin{array}{cccc}{-3 / \sqrt{2}} & {-1 / \sqrt{2}} & {0} & {3 / \sqrt{2}} & {-1 / \sqrt{2}}\end{array}\right)
$$
DONE! the projected 1-D points are shown as below

![](http://blog.codinglabs.org/uploads/pictures/pca-tutorial/07.png)



## Python

[how to do it in python mechanically](https://sebastianraschka.com/Articles/2015_pca_in_3_steps.html#a-summary-of-the-pca-approach)

https://github.com/heucoder/dimensionality_reduction_alo_codes/blob/master/codes/PCA/PCA.py#L13















