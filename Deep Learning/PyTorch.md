[TOC]



### Resources



#### pytorch_feedforward_neural_network_example

https://colab.research.google.com/drive/1jxUPzMsAkBboHMQtGyfv5M5c7hU8Ss2c#scrollTo=oQ6isf-kI2HD



#### ==my own project CIFAR==

https://colab.research.google.com/drive/1xLKq2DW8EF6pMZFtNCE09lKiuatYKIq9



#### other examples

[pytorch-tutorial](https://github.com/yunjey/pytorch-tutorial)

[Awesome-pytorch-list](https://github.com/bharathgs/Awesome-pytorch-list)

[Awesome-pytorch-list-CNVersion](https://github.com/xavier-zy/Awesome-pytorch-list-CNVersion)

==A collection of various deep learning architectures, models, and tips==

https://github.com/rasbt/deeplearning-models

https://nbviewer.jupyter.org/github/rasbt/deeplearning-models/blob/master/pytorch_ipynb/cnn/cnn-alexnet-cifar10.ipynb





### Debugging



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







### Getting started



https://pytorch.org/tutorials/



https://deeplizard.com/learn/video/v5cngxo4mIg



[Practical Deep Learning for Coders](https://course.fast.ai/)



