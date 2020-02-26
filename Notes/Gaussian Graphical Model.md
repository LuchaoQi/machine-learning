



#### concentration matrix/precision matrix - inverse covariance matrix

http://www.princeton.edu/~yc5/ele538b_sparsity/lectures/graphical_lasso.pdf

https://arxiv.org/pdf/1707.04345.pdf







[Covariance matrix and conditional independence](https://stats.stackexchange.com/a/73730)



![](https://i.stack.imgur.com/NJ4gb.png)





#### When determinant close to 0?

https://stats.stackexchange.com/a/30466

check collinearity

==use glasso object in qgraph function==



#### Penalty term?

the regularizer acts like sigmoid function

- steeply change the performance of regularization
- should test multiple possibilities of threshold











---







http://mlg.eng.cam.ac.uk/teaching/4f13/1011/lect04.pdf

http://www.stats.ox.ac.uk/~steffen/teaching/gm09/intro.pdf

http://www.stat.cmu.edu/~larry/=sml/GraphicalModels.pdf

http://www.stat.cmu.edu/~larry/=stat700/UG.pdf



![image.png](https://i.loli.net/2020/01/16/2A85qDoBkvyrPZT.png)



[Pattern Recognition and Machine Learning](http://users.isr.ist.utl.pt/~wurmd/Livros/school/Bishop - Pattern Recognition And Machine Learning - Springer  2006.pdf)

> There is one more subtlety associated with this third example that we need to consider. First we introduce some more terminology. We say that node y is a descendant of node x if there is a path from x to y in which each step of the path follows the directions of the arrows. Then it can be shown that a head-to-head path will become unblocked if either the node, or any of its descendants, is observed.
>
> 
>
> In summary, a tail-to-tail node or a head-to-tail node leaves a path unblocked unless it is observed in which case it blocks the path. By contrast, a head-to-head node blocks a path if it is unobserved, but once the node, and/or at least one of its descendants, is observed the path becomes unblocked.



![image.png](https://i.loli.net/2020/01/16/gj6qBabXHhEAuIp.png)



PRML中文笔记

https://keson96.github.io/2017/02/23/2017-02-23-Conditional-Independence/





![](http://i.imgur.com/4hwGsGc.png)



> **总结一下：一个tail-to-tail或tail-to-head的节点只有在被观察后才会阻塞路径，一个head-to-head的节点只有其或其后代节点被观察后才不会阻塞路径。**


