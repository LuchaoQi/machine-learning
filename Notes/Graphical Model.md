[TOC]



## Graphical lasso

http://ir.hit.edu.cn/~jguo/docs/notes/report-in-princeton-research.pdf

http://statweb.stanford.edu/~tibs/ftp/glasso-bio.pdf

![image.png](https://i.loli.net/2020/05/11/c5KQtlf6gARkHEN.png)

http://fieryfish.github.io/blog/2014/07/17/ggm/

![image.png](https://i.loli.net/2020/05/07/pHNzxXjFeMULQAt.png)



### concentration matrix/precision matrix = inverse of covariance matrix

http://www.princeton.edu/~yc5/ele538b_sparsity/lectures/graphical_lasso.pdf

https://arxiv.org/pdf/1707.04345.pdf



==[regarding conditional independence and its graphical representation](https://stats.stackexchange.com/a/73730)==

![](https://i.stack.imgur.com/EftcN.png)





![](https://i.stack.imgur.com/NJ4gb.png)



==note that var(x) = var(z) + var(e_1) so var(x) = 1+ 1 = 2==



### When determinant close to 0

* check collinearity

https://stats.stackexchange.com/a/30466

* USE LASSO REGULARIZATION

https://www.ncbi.nlm.nih.gov/pubmed/28489411

https://github.com/huayingfang/gCoda

==R: can use glasso object in qgraph function==



### Penalty term problem

the regularizer acts like sigmoid function

- steeply change the performance of regularization
- should test multiple possibilities of threshold













## Basics

### ==[高斯图模型 Gaussian Graphical Model](http://fieryfish.github.io/blog/2014/07/17/ggm/)==



### [JHU ML Basics](https://piazza.com/jhu/spring2020/601475/resources)



> Blocked vs. Unblocked Terminology: 
>
> B is a descendant of A if there is a path from A to B
>
> * Following the arrows 
>
> Tail-to-tail or head-to-tail node only blocks a path when it is observed 
>
> A head-to-head node blocks a path when it is unobserved 
>
> * A head-to-head path will become unblocked if either node, or any of its descendants, is observed



Shaded X means event X is observed

knowing X -> estimate Y

In EM paper, knowing coin flip sequence -> estimate P(head A)/P(head B)

![image.png](https://i.loli.net/2020/05/05/cgjJpeGDTOuyU8W.png)

>  EM model



Definition

![image.png](https://i.loli.net/2020/01/16/2A85qDoBkvyrPZT.png)



[Pattern Recognition and Machine Learning](http://users.isr.ist.utl.pt/~wurmd/Livros/school/Bishop - Pattern Recognition And Machine Learning - Springer  2006.pdf)

> There is one more subtlety associated with this third example that we need to consider. First we introduce some more terminology. We say that node y is a descendant of node x if there is a path from x to y in which each step of the path follows the directions of the arrows. Then it can be shown that a head-to-head path will become unblocked if either the node, or any of its descendants, is observed.
>
> 
>
> In summary, a tail-to-tail node or a head-to-tail node leaves a path unblocked unless it is observed in which case it blocks the path. By contrast, a head-to-head node blocks a path if it is unobserved, but once the node, and/or at least one of its descendants, is observed the path becomes unblocked.



![image.png](https://i.loli.net/2020/01/16/gj6qBabXHhEAuIp.png)



### ==[PRML中文笔记](https://keson96.github.io/2017/02/23/2017-02-23-Conditional-Independence/)==







![](http://i.imgur.com/4hwGsGc.png)



> 总结
>
> 一个tail-to-tail或tail-to-head的节点只有在被观察后才会阻塞路径 i.e. 全白的就是通的
>
> 一个head-to-head的节点只有其或其后代节点被观察后才不会阻塞路径 i.e. 全白的那就是堵住了
>
> 上面的post解释了为什么 然后下面的例子也解释了一部分



![image.png](https://i.loli.net/2020/05/05/KNtmXiGMFVu1lCq.png)





## Resources

https://piazza.com/jhu/spring2020/601475/resources





http://mlg.eng.cam.ac.uk/teaching/4f13/1011/lect04.pdf

http://www.stats.ox.ac.uk/~steffen/teaching/gm09/intro.pdf

http://www.stat.cmu.edu/~larry/=sml/GraphicalModels.pdf

http://www.stat.cmu.edu/~larry/=stat700/UG.pdf