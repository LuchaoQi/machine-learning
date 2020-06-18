



[通俗讲解集成学习算法](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247500390&idx=1&sn=6d1b71c680b4b1149c634ad43fe58a32&chksm=e873132bdf049a3d582a2d78b4644bf51a6a8f24fad381959df181b30daf0914686bba6b6813&mpshare=1&scene=1&srcid=&sharer_sharetime=1592154468471&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=258be196e48710f75a9a30ce2f2a8de35a828ada8a50c924e1e497373ab4f8fda3ba0712a659f7868bfc0d7cc7bc4c90676f0e1e262b05943c66e3204afbbe005fa3164dd190a87a2012c27fab21c597&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62080085&lang=en&exportkey=A5sx1hAvbN%2FHw88ZBZ4mlbA%3D&pass_ticket=6vM7fqouj1zwqsAVfhBBfxHSk4lCj7np0%2BM%2FTldrByNy7NQL43jLUUjjjkZz77Rx)

Bagging

![](https://i.loli.net/2020/06/18/8GN2dafMF634vLQ.png)

* construct weak learners weighted average by bootstrap for low variance
* parallel

Boosting

![](https://mmbiz.qpic.cn/mmbiz_jpg/vI9nYe94fsELq5sxjyoM3Z34rxtvMsLkibUBANniahaAlh1LNGboLUQRKhFtyicb9Rtxp29UwaHibVaUVE3Vdcw3DQ/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

* reweight weak learners for high accuracy
* sequential





https://blog.csdn.net/u013709270/article/details/72553282



> Bagging和Boosting的区别：
>
> 1）样本选择上：
>
> Bagging：训练集是在原始集中有放回选取的，从原始集中选出的各轮训练集之间是独立的。
>
> Boosting：每一轮的训练集不变，只是训练集中每个样例在分类器中的权重发生变化。而权值是根据上一轮的分类结果进行调整。
>
> 2）样例权重：
>
> Bagging：使用均匀取样，每个样例的权重相等
>
> Boosting：根据错误率不断调整样例的权值，错误率越大则权重越大。
>
> 3）预测函数：
>
> Bagging：所有预测函数的权重相等。
>
> Boosting：每个弱分类器都有相应的权重，对于分类误差小的分类器会有更大的权重。
>
> 4）并行计算：
>
> Bagging：各个预测函数可以并行生成
>
> Boosting：各个预测函数只能顺序生成，因为后一个模型参数需要前一轮模型的结果。





https://analyticsindiamag.com/primer-ensemble-learning-bagging-boosting/



![image-20200601100556258](https://i.loli.net/2020/06/01/2CyYLs9QWlxN4wX.png)

