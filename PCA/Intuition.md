# Intuition



After centering the data, we want to maximize the projected variance

Assuming the projected direction/vector is $u_1$




$$
\begin{aligned} J &=\frac{1}{N} \sum_{i=1}^{N}\left(\left(x_{i}-\bar{x}\right)^{\top} u_{1}\right)^{2} \quad \text { s.t. } u_{1}^{\top} u=1 \\ &=\sum_{i=1}^{N} \frac{1}{n} u_{1}^{\top}\left(x_{i}-\bar{x}\right) \cdot\left(x_{i}-\bar{x}\right)^{\top} u_{1} \\ &=u_{1}^{\top}\left(\sum_{i=1}^{N} \frac{1}{n}\left(x_{i}-\bar{x}\right) \cdot\left(x_{i}-\bar{x}\right)^{\top}\right) u_{1} \\ &=u_{i}^{\top} \cdot s \cdot u_{1} \end{aligned}
$$




so we need to solve an optimization problem


$$
\left\{\begin{array}{l}{\hat{u}_{1}=\arg \max u_{1}^{\top} \cdot s \cdot u_{1}} \\ {\text { s.t. } u_{1}^{\top} u=1}\end{array}\right.
$$


use Lagrange equation

