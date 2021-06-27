[toc]

### Problems with SGD

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k8yqdpv04ek4gz



#### Trade-off problem

​	Slow when batch size is large

​	Noisy when batch size is small (mini-batches do not represent full dataset so that calculated gradients might not represent best optimal directions)

#### Local minimum vs. Global minimum

![image.png](https://i.loli.net/2020/05/08/u5waKYjy4JltHRW.png)





### Solutions

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k8yqdpv04ek4gz



#### Change optimizers to Adam/AdaGrad etc.

#### Add momentum





stochastic gradient descent (SGD) in deep learning optimization

> In fact, stochastic gradient descent can help with finding the global minimum because instead of computing over a single error surface(whole batch gradient descent), you are working with many different error surfaces varying with the example you are current looking at. So it is possible that in one of these surfaces a local minima does not exist or is less pronounced than in others, which make it easier to surpass.
>
> Note, initializations are different across different landscapes. So batch gradient descent still helps find global minimum. The reason we use SGD is the tradeoff b/t computer power and accuracy.



https://piazza.com/class_profile/get_resource/k1zer6tg6s04bb/k68sgzg7o0646v

Batch gradient descent 

​	◦ Utilize the gradient of all the data 

​	◦ Slow: need to consider all the data before making a single update



### Statquest

> MLE/ Backprop
>
> Gradient Descent
>
> - Step size = partial derivative * learning rate
> - Learning rate can be adjusted in practice (Adam)
> - Stochastic gradient descent (randomly draw one sample) can be used to solve computer power problem



![image.png](https://i.loli.net/2020/01/08/LMyJxtAmGh2P1VT.png)



![image.png](https://i.loli.net/2020/01/08/zsPbTFahqgvIGf6.png)



It's like what we did in **backpropagation**, set initial guess and update the coefficients based on learning rate and derivatives. 



[Stochastic Gradient Descent, Clearly Explained!!!](https://www.youtube.com/watch?v=vMh0zPT0tLI&feature=youtu.be)



![Stochastic Gradient Descent.gif](https://i.loli.net/2020/01/08/YEjAcgrywVs2p8u.gif)





