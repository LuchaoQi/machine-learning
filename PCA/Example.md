# Example



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
Y = \begin{pmatrix}
-1 & -2 \\
-1 & 0 \\
0 & 0 \\
2 & 1 \\
0 & 1
\end{pmatrix}\left( \dfrac {1}{\sqrt {2}}\dfrac {1}{\sqrt {2}}\right) = \begin{pmatrix}
-3/\sqrt {2} \\
-1/\sqrt {2} \\
0 \\
3\sqrt {2} \\
-1/\sqrt {2}
\end{pmatrix}
$$
DONE! the projected 1-D points are shown as below

![](http://blog.codinglabs.org/uploads/pictures/pca-tutorial/07.png)