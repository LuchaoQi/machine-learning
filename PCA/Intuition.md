# Intuition



After centering the data, we want to maximize the projected variance

Assuming the unit projected direction/vector is $u_1$




$$
\begin{aligned} J &=\frac{1}{N} \sum_{i=1}^{N}\left(\left(x_{i}-\bar{x}\right)^{\top} u_{1}\right)^{2} \quad \text { s.t. }\left|u_{1}\right|=1 \text { s.t. } u_{1}^{\top} u_{1}=1 \\ &=\sum_{i=1}^{N} \frac{1}{n} u_{1}^{\top}\left(x_{i}-\bar{x}\right) \cdot\left(x_{i}-\bar{x}\right)^{\top} u_{1} \\ &=u_{1}^{\top}\left(\sum_{i=1}^{N} \frac{1}{n}\left(x_{i}-\bar{x}\right) \cdot\left(x_{i}-\bar{x}\right)^{\top}\right) u_{1} \\ &=u_{i}^{\top} \cdot s \cdot u_{1} \end{aligned}
$$




so we need to solve an optimization problem


$$
\left\{\begin{array}{l}{\hat{u}_{1}=\arg \max u_{1}^{\top} \cdot s \cdot u_{1}} \\ {\text { s.t. } u_{1}^{\top} u=1}\end{array}\right.
$$


use Lagrange equation

$$
\begin{array}{c}{\mathcal{L}\left(u_{1}, \lambda\right)=u_{1}^{\top} s u_{1}+\lambda\left(1-u_{1}^{\top} u\right)} \\ {\frac{\partial \mathcal{L}}{\partial u_{1}}=2 s \cdot u_{1}-\lambda \cdot 2 u_{1}=0} \\ {S u_{1}=\lambda u_{1}}\end{array}
$$
DONE! $u_1$ is eigenvector and $\lambda$ is eigenvalue