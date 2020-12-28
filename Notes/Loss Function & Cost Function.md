[toc]



### Cross Entropy

==great introduction: cross entropy and kl divergence==

https://machinelearningmastery.com/cross-entropy-for-machine-learning/

```python
# calculate entropy between two distributions
# calculate cross entropy
def cross_entropy(p, q):
	return -sum([p[i]*log2(q[i]) for i in range(len(p))])

# calculate the kl divergence
def kl_divergence(p, q):
	return sum(p[i] * log2(p[i]/q[i]) for i in range(len(p)))
```



https://medium.com/activating-robotic-minds/demystifying-cross-entropy-e80e3ad54a8

![](https://i.loli.net/2020/03/10/VwiF7kERYog6SQB.png)

![](https://i.loli.net/2020/05/27/lOi24zEKwbmgMc7.png)



### Hinge Loss

http://cs231n.stanford.edu/slides/2020/lecture_3.pdf

![](https://i.loli.net/2020/05/27/owbd6zT3HcnWLx2.png)

### ![](https://i.loli.net/2020/05/27/Wbj84KBhV7DZO2f.png)

