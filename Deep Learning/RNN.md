

[toc]



### NHANES time-series RNN



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


xtrain = array(xtrain, dim = c(dim(xtrain)[1], dim(xtrain)[2], 1))
xtest = array(xtest, dim = c(dim(xtest)[1], dim(xtest)[2], 1))

# 1440 minites, feature = 1
time_input = layer_input(shape = c(1440,1),
                         name = 'input_time')

time_output = time_input %>%
  layer_lstm(units = 2^8, activation = 'relu') %>% 
  layer_dense(units = 2^4, activation = 'linear') %>%
  layer_batch_normalization()

covariates_input = layer_input(shape = c(3,1),
                               name = 'input_covariates')

covariates_output = covariates_input %>%
  layer_batch_normalization() %>%
  layer_reshape(target_shape = 3) 


concatenate_layer = layer_concatenate(c(time_output,covariates_output)) %>%
  layer_dense(units = 1, activation = 'linear')

model_LSTM = keras_model(
  inputs = c(time_input,covariates_input),
  outputs = concatenate_layer
)

model_LSTM %>% compile(
 loss = "mse",
 optimizer = "adam",
 metrics = list("mean_absolute_error")
)

# kerasR::plot_model(model_CNN,
#                    # to_file = "model.png",
#                    show_shapes = TRUE,
#   show_layer_names = TRUE)



history = model_LSTM %>% fit(
  x = list(input_time = array(xtrain[,1:1440,1],dim=c(9688,1440,1)),
           input_covariates = array(xtrain[,1441:1443,1],dim=c(9688,3,1))),
  y = ytrain,
  epochs = 15,
  validation_split = 0.2,
  # batch_size = 32,
  verbose = 1
)

yPred = model_LSTM %>% predict(
  list(array(xtest[1:4171,1:1440,1],dim=c(4171,1440,1)),
       array(xtest[1:4171,1441:1443,1],dim=c(4171,3,1)))
)

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





### https://cs224d.stanford.edu/lecture_notes/notes4.pdf







![](https://i.loli.net/2020/05/28/mDG1Zpqd4z2rtRU.png)







### RNN cheat sheet

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-recurrent-neural-networks



![](https://i.loli.net/2020/01/10/jwzfiMNeKsnL2Q3.png)



The input sequence x=(x⟨1⟩,x⟨2⟩,...,x⟨Tx⟩)x=(x⟨1⟩,x⟨2⟩,...,x⟨Tx⟩) is carried over $T_x$ time steps. The network outputs y=(y⟨1⟩,y⟨2⟩,...,y⟨Tx⟩)y=(y⟨1⟩,y⟨2⟩,...,y⟨Tx⟩).

In NLP, feed in words like `n/a/m/a/s/k/a/r` subsequently at each time step.

$x^{<t>}$ is the input at time t



![](https://stanford.edu/~shervine/teaching/cs-230/illustrations/description-block-rnn-ltr.png?74e25518f882f8758439bcb3637715e5)



![](https://i.loli.net/2020/05/23/Vo4SYDRjGa1rEPJ.png)



### Some Examples with Code



https://victorzhou.com/blog/intro-to-rnns/

https://repl.it/@vzhou842/A-RNN-from-scratch#main.py





[R Interface to the Keras Deep Learning Library](https://cran.r-project.org/web/packages/kerasR/vignettes/introduction.html)



[RNN(Recurrent Neural Network) Tutorial: TensorFlow Example](https://www.guru99.com/rnn-tutorial.html)



[Building your Recurrent Neural Network - Step by Step](https://datascience-enthusiast.com/DL/Building_a_Recurrent_Neural_Network-Step_by_Step_v1.html)



==[namaskar example](https://hackernoon.com/rnn-or-recurrent-neural-network-for-noobs-a9afbb00e860)==



![](https://hackernoon.com/hn-images/1*_mM83sFLjzKt8cRB439Y3Q.gif)











