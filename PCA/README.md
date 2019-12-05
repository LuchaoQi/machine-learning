# PCA

>Reduce dimension by using the eigenvectors/eigenvalues of covariance matrix

---

Miscellaneous

https://www.zhihu.com/question/30094611

https://www.cnblogs.com/pinard/p/6239403.html

http://blog.codinglabs.org/articles/pca-tutorial.html

[Understanding the Role of Eigenvectors and Eigenvalues in PCA Dimensionality Reduction.](https://medium.com/@dareyadewumi650/understanding-the-role-of-eigenvectors-and-eigenvalues-in-pca-dimensionality-reduction-10186dad0c5c)



**Example**

it seems github has problem rendering latex

![](https://github.com/LuchaoQi/machine-learning/blob/master/PCA/pca.png?raw=true)



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


$$
Y=\begin{pmatrix} 1/\sqrt2 & 1/\sqrt2 \end{pmatrix}\left(\begin{array}{llllll}{-1} & {-1} & {0} & {2} & {0} \\ {-2} & {0} & {0} & {1} & {1}\end{array}\right)=\left(\begin{array}{cccc}{-3 / \sqrt{2}} & {-1 / \sqrt{2}} & {0} & {3 / \sqrt{2}} & {-1 / \sqrt{2}}\end{array}\right)
$$



DONE! the projected 1-D points are shown as below

![](http://blog.codinglabs.org/uploads/pictures/pca-tutorial/07.png)





---



Python

https://github.com/heucoder/dimensionality_reduction_alo_codes/blob/master/codes/PCA/PCA.py#L13















