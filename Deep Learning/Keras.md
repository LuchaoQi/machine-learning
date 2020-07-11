[toc]





## R

### ==[My NHANES project (6_BMI_compilation) includes CNN and LSTM example](https://github.com/LuchaoQi/NHANES/blob/master/6_BMI_compilation.Rmd)== 



### layer_reshape can be used for further concatenation



```R
covariates_output = covariates_input %>%
  layer_reshape(target_shape = 3)
```





### filters & input_shape



`filters` 

in CNN means number of kernels

https://datascience.stackexchange.com/a/56408

![](https://i.loli.net/2020/06/03/XfZ4lcFxWjD8Kph.png)

filters = 3, 6, 10

padding = 0

==(N - F + 2P) / S + 1==



`input_shape` 

```R
# pretraining
# 1 means the number of channels
# univariate time-series: 1
# multivariate time-series: number of monitors
# RGB image: 3

# CNN example in time-series data
xtrain = array(xtrain, dim = c(dim(xtrain)[1], dim(xtrain)[2], 1))
# RNN tstep is usually the number of columns
xtrain = array(xtrain, dim = c(dim(xtrain)[1], tstep, features))

# when training in neural network model
# dont forget c()
input_shape = c(dim(xtrain)[2:3])
```

https://keras.io/api/layers/convolution_layers/convolution2d/



#### input_shape in time-series data



https://machinelearningmastery.com/reshape-input-data-long-short-term-memory-networks-keras/

https://datascience.stackexchange.com/a/42723

https://machinelearningmastery.com/how-to-develop-rnn-models-for-human-activity-recognition-time-series-classification/

> We can then load all data for a given group (train or test) into a single three-dimensional NumPy array, where the dimensions of the array are [*samples, time steps, features*].
>
> To make this clearer, there are 128 time steps and nine features, where the number of samples is the number of rows in any given raw signal data file.







### [Tutorial: Save and Restore Models](https://tensorflow.rstudio.com/tutorials/beginners/basic-ml/tutorial_save_and_restore/)





### [Classifying Time Series with Keras in R : A Step-by-Step Example](https://letyourmoneygrow.com/2018/05/27/classifying-time-series-with-keras-in-r-a-step-by-step-example/)

this tutorial includes

conv / lstm



### ==[Official Keras Examples](https://keras.rstudio.com/articles/examples/index.html)==





### [Pipeline: R Interface to the Keras Deep Learning Library](https://cran.r-project.org/web/packages/kerasR/vignettes/introduction.html)





### JHU handwriting recognition

https://github.com/LuchaoQi/HW_JHU/blob/master/introduction_to_data_science_for_BME/hw7/hw7.pdf



==remember to log transform skewed data for regression purpose tho sometimes it can perform worse== 







## Python

### [Visualization: Draw neural network diagram](https://github.com/LuchaoQi/NHANES/blob/master/plot%20NN.ipynb)







### [To plot model, check out NHANES project](https://github.com/LuchaoQi/NHANES/blob/master/plot%20NN.ipynb)



#### [ValueError: A `Concatenate` layer should be called on a list of at least 2 inputs](https://stackoverflow.com/questions/59639633/valueerror-a-concatenate-layer-should-be-called-on-a-list-of-at-least-2-input)



https://stackoverflow.com/a/59657571/11964524





### Save and Restore

https://www.easy-tensorflow.com/tf-tutorials/basics/save-and-restore

https://cv-tricks.com/tensorflow-tutorial/save-restore-tensorflow-models-quick-complete-tutorial/

