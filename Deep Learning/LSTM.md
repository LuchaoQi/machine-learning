[TOC]







https://cs224d.stanford.edu/lecture_notes/notes4.pdf

最后一页介绍了GRU/LSTM

https://web.stanford.edu/class/archive/cs/cs224n/cs224n.1194/slides/cs224n-2019-lecture07-fancy-rnn.pdf

对应的slides



### [How to Reshape Input Data for Long Short-Term Memory Networks in Keras](https://machinelearningmastery.com/reshape-input-data-long-short-term-memory-networks-keras/)



This section lists some tips to help you when preparing your input data for LSTMs.

- The LSTM input layer must be 3D.
- The meaning of the 3 input dimensions are: samples, time steps, and features.
- The LSTM input layer is defined by the *input_shape* argument on the first hidden layer.
- The *input_shape* argument takes a tuple of two values that define the number of time steps and features.
- The number of samples is assumed to be 1 or more.
- The *reshape()* function on NumPy arrays can be used to reshape your 1D or 2D data to be 3D.
- The *reshape()* function takes a tuple as an argument that defines the new shape.





[Multivariate Time Series Forecasting with LSTMs in Keras](https://machinelearningmastery.com/multivariate-time-series-forecasting-lstms-keras/)



![image-20200602131815927](https://i.loli.net/2020/06/03/AuTXCnypDs1Vmd9.png)





http://rwanjohi.rbind.io/2018/04/05/time-series-forecasting-using-lstm-in-r/



![image-20200602190136694](https://i.loli.net/2020/06/03/5vuL2BaTJDIReqo.png)





## Coding



### Keras NHANES



```R
tstep = 1
# we are using univariate time series data so number of feature is 1
# for multivariate data e.g. activity signal on axis 1, axis 2, axis 3, then number of feature is 3
# [samples / batch size, tstep, number of features] 
xtrain = array(xtrain, dim = c(dim(xtrain)[1], tstep, 1))
xtest = array(xtest, dim = c(dim(xtrain)[1], tstep, 1))
```





```R
rm(list = ls())
load('MINdata.rda')
MINdata_1440 = as.data.frame(lapply(MINdata_1440, function (x) if (is.factor(x)) unclass(x) %>% as.numeric else x))
set.seed(000)
trainIdx = sample(c(TRUE, FALSE), dim(MINdata_1440)[1], replace = TRUE, prob = c(.7, .3))


y = MINdata_1440$BMI 
x = MINdata_1440 %>% select(-BMI) %>% select(-SEQN)

ytrain = y[trainIdx]
xtrain = x[trainIdx, ] %>% scale()

mns = attr(xtrain, "scaled:center")
sds = attr(xtrain, "scaled:scale")

xtest = x[!trainIdx, ] %>% scale(center = mns, scale = sds)
ytest = y[!trainIdx]


tstep = 1
# we are using univariate time series data so number of feature is 1
# for multivariate data e.g. activity signal on axis 1, axis 2, axis 3, then number of feature is 3
# [samples / batch size, tstep, number of features] 
xtrain = array(xtrain, dim = c(dim(xtrain)[1], tstep, 1))
xtest = array(xtest, dim = c(dim(xtest)[1], tstep, 1))


model_LSTM = keras_model_sequential() %>%
  layer_lstm(input_shape = c(dim(xtrain)[2:3]),
             units = 2^8, activation = 'relu') %>% 
  # layer_lstm(units = 2^4, activation = 'relu') %>%
  layer_dense(2^2) %>%
  # layer_dropout(0.25) %>%
  layer_dense(units = 1, activation = "linear")


model_LSTM %>% compile(
 loss = "mse",
 optimizer = "adam",
 metrics = list("mean_absolute_error")
)

history = model_LSTM %>% fit(
 xtrain,
 ytrain,
 epochs = 10,
 validation_split = 0.2,
 verbose = 1
)

yPred = model_LSTM %>% predict(xtest)
```



```{r}
model_LSTM %>% save_model_hdf5("model_LSTM.h5")
model_LSTM <- load_model_hdf5("model_LSTM.h5")
```

```{r}
plot(yPred, ytest)

mean((yPred-ytest)^2)

cor(yPred,ytest)

summary(model_LSTM)
```



## Basics

> Of note, [Transformer/Bert](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247488025&idx=1&sn=761b97bb22440741cc6341bf8e437ee8&chksm=e870c354df074a423a65da7b96744cc5b2a25dce619313b506c056a7444d0afc327d8e4ccb5b&mpshare=1&scene=1&srcid=&sharer_sharetime=1577292019089&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=d2b333b7fb0e2b74d40f2fd3dc4778a9d57b0f5bc5fb440d1a5938d940588c4f147b5e2b4804d228481fa50be5982449d350781b531bd2619fba011353d2000cd1caa760e4791fbd01d0fc4c2728a27f&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62070158&lang=en&exportkey=A1O%2BtbThynNesxsMZgt9z0U%3D&pass_ticket=HdMLvtsUXrpjxTMvYQpJFkvsMYM5Q%2Fpxqp%2FBI9freoHRVqnDOq%2BgXtQa7mz52LbH) may perform better than LSTM in NLP



==[Understanding LSTM Networks](http://colah.github.io/posts/2015-08-Understanding-LSTMs/)==



[Difference Between Return Sequences and Return States for LSTMs in Keras](https://machinelearningmastery.com/return-sequences-and-return-states-for-lstms-in-keras/)

[How is the hidden state (h) different from the memory (c) in an LSTM cell?](https://www.quora.com/How-is-the-hidden-state-h-different-from-the-memory-c-in-an-LSTM-cell)

[Why do we need both cell state and hidden value in LSTM networks?](https://stats.stackexchange.com/a/388954)





[LSTM长短期记忆网络的学习与实现](https://www.youtube.com/watch?v=EC3SvfW0Z_A)

RNN cons

![](https://i.loli.net/2019/12/29/FOubR9P7oAyEe8T.png)





![](https://i.loli.net/2019/12/29/D38bPEdL49eUcBn.png)





[Recurrent Neural Networks (RNN) and Long Short-Term Memory (LSTM)](https://www.youtube.com/watch?v=WCUNPb-5EYI)



![](https://i.loli.net/2019/12/17/NbyUuoOf4ApE2HT.png)

![](https://i.loli.net/2019/12/18/dBM69qkuSZLtPOy.png)

> Text translation (grammar structure: sentence to sentence)
>
> Speech to text
>
> Even robotics 



