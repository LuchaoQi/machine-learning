[TOC]



### Coding PyTorch

https://www.bilibili.com/video/av35157971?from=search&seid=4061842832168997589

#### how to set up hyperparameters  in fully connected layer?

https://pytorch.org/tutorials/beginner/blitz/cifar10_tutorial.html



```Python
class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.conv1 = nn.Conv2d(3, 6, 5)
        self.pool = nn.MaxPool2d(2, 2)
        self.conv2 = nn.Conv2d(6, 16, 5)
        self.fc1 = nn.Linear(16 * 5 * 5, 120)
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, 10)
```

注意这里为什么要是`16*5*5`  经过一系列的conv 和 maxpool 最终输出的是16层`5*5`的layer 见Andrew Ng的图

`self.fc1 = nn.Linear(16 * 5 * 5, 120)` 

https://towardsdatascience.com/understanding-and-calculating-the-number-of-parameters-in-convolution-neural-networks-cnns-fc88790d530d

![](https://miro.medium.com/max/7680/1*ZQkGKOELqJsf_6tOdZrDNQ.png)



https://algorithmia.com/blog/convolutional-neural-nets-in-pytorch



```python
def outputSize(in_size, kernel_size, stride, padding):

output = int((in_size - kernel_size + 2*(padding)) / stride) + 1

return(output)
```















### Notes



[RELU in CNN](https://www.superdatascience.com/blogs/convolutional-neural-networks-cnn-step-1b-relu-layer/)







http://cs231n.github.io/convolutional-networks/

> INPUT [32x32x3] will hold the raw pixel values of the image, in this case an image of width 32, height 32, and with three color channels R,G,B.
>
> The depth would be 3 (Red, Green, Blue channels).

Max pooling MP $2*2$ MP $3*3$

https://datascience.stackexchange.com/a/27252

> It is worth noting that there are only two commonly seen variations of the max pooling layer found in practice: A pooling layer with F=3,S=2 (also called overlapping pooling), and more commonly F=2,S=2. Pooling sizes with larger receptive fields are too destructive.





http://cs231n.stanford.edu/slides/2019/cs231n_2019_lecture05.pdf

![image.png](https://i.loli.net/2020/02/19/aDzp79ZCBdgwPuV.png)



![image.png](https://i.loli.net/2020/03/10/ohDOVv9BAsjdfqm.png)

>  Note the number of filter equals the dimension[3] of the next layer
>
> MP (F = 5, S = 1)

![image.png](https://i.loli.net/2020/02/19/4xgPJAoKdBmQeGc.png)











### Intro

CNN cheat sheet

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-convolutional-neural-networks

**Convolution layer (CONV)**

![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/convolution-layer-a.png)

**Pooling (POOL)**

![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/max-pooling-a.png)

**Fully Connected (FC)**

![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/fully-connected.png)





[How Convolutional Neural Networks work](https://www.youtube.com/watch?v=FmpDIaiMIeA)

convolutional layer

![](https://i.loli.net/2019/12/23/A5Vsg6I7mOZ4anp.png)

Pooling: take the maximum value from each window. Make smaller images.

![](https://i.loli.net/2019/12/23/rb97AC3MufgkXiB.png)





![](https://i.loli.net/2019/12/23/EompvuUt3Z6zVBd.png)

Backpropagation

![](https://i.loli.net/2019/12/23/o5iL8YUrl6uTvqm.png)

![](https://i.loli.net/2019/12/23/6V5Se8NXu9fcK1O.png)

#### Pros

Applications: Images/Sound/Text

==Time series data==



![](https://media.springernature.com/full/springer-static/image/art%3A10.1007%2Fs10618-019-00619-1/MediaObjects/10618_2019_619_Fig6_HTML.png?as=webp)



> https://link.springer.com/article/10.1007/s10618-019-00619-1





#### Cons

Data must be "spatial".

If your data is a customer data with customers in rows, it's okay to exchange several rows but still makes sense.

![](https://i.loli.net/2019/12/24/kVdlMyIBgNtnpmX.png)



[A Beginner's Guide To Understanding Convolutional Neural Networks](https://adeshpande3.github.io/adeshpande3.github.io/A-Beginner's-Guide-To-Understanding-Convolutional-Neural-Networks/)

[A Beginner's Guide To Understanding Convolutional Neural Networks Part 2](https://adeshpande3.github.io/adeshpande3.github.io/A-Beginner's-Guide-To-Understanding-Convolutional-Neural-Networks-Part-2/)





