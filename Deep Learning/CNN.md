[TOC]



### [Wouldn't multiple filters in a convolutional layer learn the same parameter during training?](https://stats.stackexchange.com/questions/351661/wouldnt-multiple-filters-in-a-convolutional-layer-learn-the-same-parameter-duri)



### [Deep Learning Multi-Input CNN](https://stackoverflow.com/questions/44394056/deep-learning-multi-input-cnn)



![](https://i.stack.imgur.com/pchUR.png)



https://keras.io/guides/functional_api/







### 1d CNN for time-series data



For forecasting,  data [samples, timesteps, features] would be divided into multiple sequences [samples*x, timesteps/x , features] containing past information.

[How to Develop Convolutional Neural Network Models for Time Series Forecasting](https://machinelearningmastery.com/how-to-develop-convolutional-neural-network-models-for-time-series-forecasting/)

For regression problems, data is usually not reformatted.

https://colab.research.google.com/drive/1zjh0tUPYJYgJJunpLC9fW5uf--O0LKeZ?usp=sharing

[How to Use Convolutional Neural Networks for Time Series Classification](https://medium.com/@Rehan_Sayyad/how-to-use-convolutional-neural-networks-for-time-series-classification-80575131a474)







[What is the difference between Conv1D and Conv2D?](https://stats.stackexchange.com/questions/295397/what-is-the-difference-between-conv1d-and-conv2d)



![](https://i.loli.net/2020/05/29/IPxuJ43oOB8nXZA.png)



### [Where should I place dropout layers in a neural network?](https://stats.stackexchange.com/questions/240305/where-should-i-place-dropout-layers-in-a-neural-network)

> In the original paper that proposed dropout layers, by [Hinton (2012)](https://arxiv.org/pdf/1207.0580.pdf), dropout (with p=0.5) was used on each of the fully connected (dense) layers before the output; it was not used on the convolutional layers. This became the most commonly used configuration.
>
> [More recent research](http://mipal.snu.ac.kr/images/1/16/Dropout_ACCV2016.pdf) has shown some value in applying dropout also to convolutional layers, although at much lower levels: p=0.1 or 0.2. Dropout was used after the activation function of each convolutional layer: CONV->RELU->DROP.



### ==how to set up hyperparameters in fully connected layer?==



https://towardsdatascience.com/understanding-and-calculating-the-number-of-parameters-in-convolution-neural-networks-cnns-fc88790d530d

![](https://miro.medium.com/max/7680/1*ZQkGKOELqJsf_6tOdZrDNQ.png)



https://algorithmia.com/blog/convolutional-neural-nets-in-pytorch



```python
def outputSize(in_size, kernel_size, stride, padding):

output = int((in_size - kernel_size + 2*(padding)) / stride) + 1

return(output)
```





## Coding



### [Here’s how you can get a 2–6x speed-up on your data pre-processing with Python](https://towardsdatascience.com/heres-how-you-can-get-a-2-6x-speed-up-on-your-data-pre-processing-with-python-847887e63be5)

before

```python
import glob
import os
import cv2


### Loop through all jpg files in the current folder 
### Resize each one to size 600x600
for image_filename in glob.glob("*.jpg"):
 ### Read in the image data
 img = cv2.imread(image_filename)

 ### Resize the image
 img = cv2.resize(img, (600, 600)) 
```

after

```python
import glob
import os
import cv2
import concurrent.futures


def load_and_resize(image_filename):
 ### Read in the image data
 img = cv2.imread(image_filename)

 ### Resize the image
 img = cv2.resize(img, (600, 600)) 


### Create a pool of processes. By default, one is created for each CPU in your machine.
with concurrent.futures.ProcessPoolExecutor() as executor:
 ### Get a list of files to process
 image_files = glob.glob("*.jpg")

 ### Process the list of files, but split the work across the process pool to use all CPUs
 ### Loop through all jpg files in the current folder 
 ### Resize each one to size 600x600
 executor.map(load_and_resize, image_files)
```



### [数据读取与数据扩增方法](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247499297&idx=1&sn=d75be333eb3ade728d757f139e8febf2&chksm=e8732f6cdf04a67a92ad4cedfba5931b30c7dd8b6046f094ebce7cf72fbc7ecc32a4a65581a5&mpshare=1&scene=1&srcid=&sharer_sharetime=1591534131483&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=31b516006248d178c3c9110dfe3f1ba193e9658dd47fc5cbe3d3459735d71a00de1d59814528288e2008f7d0bfb077c4439695253239315e88d5a706c2b74b294af6620c70156ac1e545b769a6f02dec&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62080085&lang=en&exportkey=A7BATqkYwN2iYUX5T2vh2aw%3D&pass_ticket=cYx0%2BhLbX1UacbLG4i3o0AGYx8n5VKUGf0JlAY7afdjH%2F4ciVDWwW6Fqn6wXUZNt)





### Keras NHANES

https://datascience.stackexchange.com/a/56408

```R

rm(list = ls())
library(tidyverse)
library(reticulate)
library(keras)
library(caret)
load('MINdata.rda')


MINdata_1440 = as.data.frame(lapply(MINdata_1440, function (x) if (is.factor(x)) unclass(x) %>% as.numeric else x))

set.seed(000)
trainIdx = sample(c(TRUE, FALSE), dim(MINdata_1440)[1], replace = TRUE, prob = c(.7, .3))

# y = log(MINdata$BMI + 1)
y = MINdata_1440$BMI
x = MINdata_1440 %>% select(-BMI) %>% select(-SEQN)

ytrain = y[trainIdx]
xtrain = x[trainIdx, ] %>% scale()

mns = attr(xtrain, "scaled:center")
sds = attr(xtrain, "scaled:scale")

xtest = x[!trainIdx, ] %>% scale(center = mns, scale = sds)
ytest = y[!trainIdx]


# we are using univariate time series data so number of feature is 1
# for multivariate data e.g. activity signal on axis 1, axis 2, axis 3, then number of feature is 3 
xtrain = array(xtrain, dim = c(dim(xtrain)[1], dim(xtrain)[2], 1))
xtest = array(xtest, dim = c(dim(xtest)[1], dim(xtest)[2], 1))

# 1440 minites, feature = 1
time_input = layer_input(shape = c(1440,1),
                         name = 'input_time')

time_output = time_input %>%
  layer_conv_1d(filters = 2^8, kernel_size = 2, activation = "relu") %>%
  layer_max_pooling_1d(pool_size = 2) %>%
  layer_conv_1d(filters = 2^4, kernel_size = 2, activation = "relu") %>%
  layer_max_pooling_1d(pool_size = 2) %>%
  layer_flatten()  %>%
  layer_dense(units = 2^4, activation = "relu") 

  
covariates_input = layer_input(shape = c(3,1),
                               name = 'input_covariates')

covariates_output = covariates_input %>%
  layer_reshape(target_shape = 3)


concatenate_layer = layer_concatenate(c(time_output,covariates_output)) %>%
  layer_dense(units = 1, activation = 'linear')

model_CNN = keras_model(
  inputs = c(time_input,covariates_input),
  outputs = concatenate_layer
)

model_CNN %>% compile(
 loss = "mse",
 optimizer = "adam",
 metrics = list("mean_absolute_error")
)

# kerasR::plot_model(model_CNN,
#                    # to_file = "model.png",
#                    show_shapes = TRUE,
#   show_layer_names = TRUE)



history = model_CNN %>% fit(
  x = list(input_time = array(xtrain[,1:1440,1],dim=c(9688,1440,1)),
           input_covariates = array(xtrain[,1441:1443,1],dim=c(9688,3,1))),
  y = ytrain,
  epochs = 20,
  validation_split = 0.2,
  batch_size = 32,
  verbose = 1
)

yPred = model_CNN %>% predict(
  list(array(xtest[1:4171,1:1440,1],dim=c(4171,1440,1)),
       array(xtest[1:4171,1441:1443,1],dim=c(4171,3,1)))
)

```

```{r}
model_CNN %>% save_model_hdf5("model_CNN.h5")
model_CNN <- load_model_hdf5("model_CNN.h5")
```

```{r}
plot(yPred, ytest)

mean((yPred-ytest)^2)

cor(yPred,ytest)

summary(model_CNN)
```





### PyTorch DL hw CIFAR-100 google colab 

[Application of CNN in CIFAR-100](https://colab.research.google.com/drive/1xLKq2DW8EF6pMZFtNCE09lKiuatYKIq9?usp=sharing)



https://www.bilibili.com/video/av35157971?from=search&seid=4061842832168997589







### [My notes: PyTorch.md file](https://github.com/LuchaoQi/Data-Science/blob/master/Deep%20Learning/PyTorch.md)







### Notes



[RELU in CNN](https://www.superdatascience.com/blogs/convolutional-neural-networks-cnn-step-1b-relu-layer/)



http://cs231n.github.io/convolutional-networks/

> INPUT [32x32x3] will hold the raw pixel values of the image, in this case an image of width 32, height 32, and with three color channels R,G,B.
>
> The depth would be 3 (Red, Green, Blue channels).

Max pooling MP $2*2$ MP $3*3$

https://datascience.stackexchange.com/a/27252

> It is worth noting that there are only two commonly seen variations of the max pooling layer found in practice: A pooling layer with F=3,S=2 (also called overlapping pooling), and more commonly F=2,S=2. Pooling sizes with larger receptive fields are too destructive.



#### ==[Stanford Lecture 5: Convolutional Neural Networks]( http://cs231n.stanford.edu/slides/2019/cs231n_2019_lecture05.pdf)==

如果有padding的话就 (N-F+2P)/S +1



![image.png](https://i.loli.net/2020/03/10/ohDOVv9BAsjdfqm.png)

>  ==Note the number of filter equals the dimension[3] of the next layer==
>
> MP (F = 5, S = 1)





## Intro



### ==[CNN explainer](https://poloclub.github.io/cnn-explainer/)==



### ==CNN cheat sheet==

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-convolutional-neural-networks



**Convolution layer (CONV)**

![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/convolution-layer-a.png)

**Pooling (POOL)**

![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/max-pooling-a.png)

**Fully Connected (FC)**



![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/fully-connected-ltr.png?32caf9e07c79d652faa292812579d063)



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





## Resources



https://github.com/poloclub/cnn-explainer

https://poloclub.github.io/cnn-explainer/