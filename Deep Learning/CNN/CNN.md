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

### Pros

Applications: Images/Sound/Text

==Time series data==



![](https://media.springernature.com/full/springer-static/image/art%3A10.1007%2Fs10618-019-00619-1/MediaObjects/10618_2019_619_Fig6_HTML.png?as=webp)



> https://link.springer.com/article/10.1007/s10618-019-00619-1





### Cons

Data must be "spatial".

If your data is a customer data with customers in rows, it's okay to exchange several rows but still makes sense.

![](https://i.loli.net/2019/12/24/kVdlMyIBgNtnpmX.png)



[A Beginner's Guide To Understanding Convolutional Neural Networks](https://adeshpande3.github.io/adeshpande3.github.io/A-Beginner's-Guide-To-Understanding-Convolutional-Neural-Networks/)

[A Beginner's Guide To Understanding Convolutional Neural Networks Part 2](https://adeshpande3.github.io/adeshpande3.github.io/A-Beginner's-Guide-To-Understanding-Convolutional-Neural-Networks-Part-2/)

