[toc]





## R



`filters` 

in CNN means number of kernels

https://datascience.stackexchange.com/a/56408

![](https://i.loli.net/2020/06/03/XfZ4lcFxWjD8Kph.png)

filters = 3, 6, 10



`input_shape` 

```R
# pretraining
# 1 means the number of channels
# univariate time-series: 1
# multivariate time-series: number of moniter
# RGB image: 3

xtrain = array(xtrain, dim = c(dim(xtrain)[1], dim(xtrain)[2], 1))
# in time-series data, tstep is usually set to 1
xtrain = array(xtrain, dim = c(dim(xtrain)[1], tstep, 1))

# when training in neural network model
# dont forget c()
input_shape = c(dim(xtrain)[2:3])
```

https://keras.io/api/layers/convolution_layers/convolution2d/







### [Tutorial: Save and Restore Models](https://tensorflow.rstudio.com/tutorials/beginners/basic-ml/tutorial_save_and_restore/)



### ==[Official Keras Examples](https://keras.rstudio.com/articles/examples/index.html)==



### [Pipeline: R Interface to the Keras Deep Learning Library](https://cran.r-project.org/web/packages/kerasR/vignettes/introduction.html)



### NHANES project includes CNN and LSTM example



### JHU handwriting recognition

https://github.com/LuchaoQi/HW_JHU/blob/master/introduction_to_data_science_for_BME/hw7/hw7.pdf



==remember to log transform skewed data for regression purpose tho sometimes it can perform worse== 







