[TOC]

## Performance Improvement

Labs session lab5~6

https://piazza.com/jhu/spring2020/cs482682/resources



## Resources





### [==【精简教程版】100行代码入手天池CV赛事==](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247498124&idx=1&sn=690c7ffa6a072571957eb09ca38afe2a&chksm=e87328c1df04a1d76ec4f22a9424ccddafe85d1afc911a5292e2acdb3db580553023e54ad014&mpshare=1&scene=1&srcid=&sharer_sharetime=1590974551563&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=c962dccfb7ec1af3a5dc9ca7a38b448aa15222b0e75e42df1c098e9c2ed7105569bb9ee9c756ffa1223c17c7af2961d03126bf3f3aaa646ff1ab9c61c5474025e59a8798e33079bdcba7018af6f151fd&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62080085&lang=en&exportkey=A5Zn62t%2FuoCW3Ma46vYh7mw%3D&pass_ticket=iG9tmff0K9vrlZNPCJQCMy97vaw3HPcOV0OlQSjmsNy2W78ih6CnzVa9oWE87ruE)

天池这个例子提供了很好的pipeline, 包括了怎么自定义数据集和注释



### ==my own project CIFAR-100==

https://colab.research.google.com/drive/1xLKq2DW8EF6pMZFtNCE09lKiuatYKIq9





### PyTorch Tutorial: How to Develop Deep Learning Models with Python

https://machinelearningmastery.com/pytorch-tutorial-develop-deep-learning-models/



### PyTorch Common structure

https://colab.research.google.com/drive/1jxUPzMsAkBboHMQtGyfv5M5c7hU8Ss2c#scrollTo=oQ6isf-kI2HD







### other examples



[pytorch-tutorial](https://github.com/yunjey/pytorch-tutorial)

[Awesome-pytorch-list](https://github.com/bharathgs/Awesome-pytorch-list)

[Awesome-pytorch-list-CNVersion](https://github.com/xavier-zy/Awesome-pytorch-list-CNVersion)

#### ==A collection of various deep learning architectures, models, and tips==

https://github.com/rasbt/deeplearning-models



### Miscellaneous



https://pytorch.org/tutorials/



https://deeplizard.com/learn/video/v5cngxo4mIg



[Practical Deep Learning for Coders](https://course.fast.ai/)





### Debugging problem



[What does -1 mean in pytorch view?](https://stackoverflow.com/questions/50792316/what-does-1-mean-in-pytorch-view)



[CUDA error 59: Device-side assert triggered](https://towardsdatascience.com/cuda-error-device-side-assert-triggered-c6ae1c8fa4c3)



[transforms.RandomCrop((img_h, img_w)) raise ValueError(empty range for randrange)(%d,%d, %d)](https://blog.csdn.net/WJ_MeiMei/article/details/87968647)



#### Numpy Tensor Transformation

Numpy to Tensor

https://discuss.pytorch.org/t/converting-numpy-array-to-tensor-on-gpu/19423/2

```
img = torch.from_numpy(img).float().to(device)
```

Tensor to Numpy

```
tensor.numpy()
tensor.eval()
```



#### [Reproducibility](https://pytorch.org/docs/stable/notes/randomness.html#reproducibility)

[How to use cudnn in pytorch？ #698](https://github.com/pytorch/pytorch/issues/698)







