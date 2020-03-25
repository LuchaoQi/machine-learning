cheat sheet

https://datacamp-community-prod.s3.amazonaws.com/e9f83f72-a81b-42c7-af44-4e35b48b20b7







[numpy-100](https://github.com/rougier/numpy-100)



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
a = np.arange(6).reshape((2, 3))
b = np.zeros_like(a)
```



![image.png](https://i.loli.net/2020/01/17/nINBl2itZQ36S79.png)



[Here’s How to Use CuPy to Make Numpy Over 10X Faster](https://towardsdatascience.com/heres-how-to-use-cupy-to-make-numpy-700x-faster-4b920dda1f56)