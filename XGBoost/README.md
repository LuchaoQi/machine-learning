### XGBoost

[XGBoost Part1: XGBoost Trees for Regression](https://www.youtube.com/watch?v=OtD8wVaFm6E&feature=youtu.be)

>  Holy Moly, the Big Boss XGBoost has finally arrived. Thanks to STATQUEST!

### Notes

XGBoost Trees are more complicated than regression trees which just need to calculate the minimum SSR. In XGBoost, similar to Gradient Boost, we set a initial guess value and than do the following regression.

![](https://i.loli.net/2019/12/18/MKUuSFadLVnAsZm.png)

> We set the initial predicted value 0.5. In this case, we set $\lambda = 0$.

![](https://i.loli.net/2019/12/18/GSIM3pnABechrmK.png)

![](https://i.loli.net/2019/12/18/AgXn97fQWT23Cjt.png)

> Split the leaf until only one residual in the leaf (only $-10.5$ left in the leaf on the left). For simplicity sake, we just limit the tree depth to two levels.
>
> Then, we need to prune the XGBoost tree based on its Gain values.

![](https://i.loli.net/2019/12/18/pxct5z24hmIyqNX.png) 

> If the Gain of branch is larger than $\gamma$, we'll retain the branch. Note, we'll consider the order of branches from bottom up.

![](https://i.loli.net/2019/12/18/QYEKxWnd3MUwPGu.png)