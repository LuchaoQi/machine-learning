[TOC]



### [这可能是我见过最好的 NumPy 图解教程！](https://mp.weixin.qq.com/s/5_6QKacG9lcyjwHJfLqYSA)

### [Here’s How to Use CuPy to Make Numpy Over 10X Faster](https://towardsdatascience.com/heres-how-to-use-cupy-to-make-numpy-700x-faster-4b920dda1f56)



### axis in numpy

```python
a = np.arange(6).reshape(2,3) # [[0,1,2],[3,4,5]]
a.mean(axis = 0) 
# create array of shape (1,ncol) i.e. dimension in axis to 1
# [1.5, 2.5, 3.5]
```



application: normalize rgb images



```python
# # normalization 
# # mean and std of cifar100 dataset
# dataset = np.concatenate((train_x,test_x,dev_x),axis=0)/255
# # dataset is of shape (50000,3,32,32) N*C*H*W
# mean = dataset.mean(axis = (0,2,3),keepdims=True)
# print(mean,mean.shape)


def normalize_stats_image_by_image(images):
  CIFAR100_TRAIN_MEAN = np.asarray((0.5070751592371323, 0.48654887331495095, 0.4409178433670343)).reshape(1,3,1,1)
  CIFAR100_TRAIN_STD = np.asarray((0.2673342858792401, 0.2564384629170883, 0.27615047132568404)).reshape(1,3,1,1)
  return (images - CIFAR100_TRAIN_MEAN)/CIFAR100_TRAIN_STD

train_x = normalize_stats_image_by_image(train_x/255)
dev_x = normalize_stats_image_by_image(dev_x/255)
test_x = normalize_stats_image_by_image(test_x/255)
```





### [numpy-100](https://github.com/rougier/numpy-100)



```python
np.zeros(12).reshape(3,4) = np.zeros((3,4))
# N, number of matrices
np.random.random((N,nrow,ncol)) = np.empty((N,nrow,ncol))
np.empty((2,3,4))
np.random.rand(10) = np.empty(10)

# 所以用np.empty最方便

Z = np.ones((10,10))
# Change 1 to 0
Z[1:-1,1:4] = 0
np.pad(Z, pad_width=1, mode='constant', constant_values=0)
```



https://realpython.com/how-to-use-numpy-arange/

```python
a = np.empty(6).reshape((2,3))
a = np.arange(6).reshape((2, 3))
b = np.zeros_like(a)
```





### cheat sheet

https://datacamp-community-prod.s3.amazonaws.com/e9f83f72-a81b-42c7-af44-4e35b48b20b7



![image.png](https://i.loli.net/2020/01/17/nINBl2itZQ36S79.png)



