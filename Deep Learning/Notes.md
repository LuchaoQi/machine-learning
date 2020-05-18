[toc]

### Vanishing gradient problem

Basics

https://towardsdatascience.com/the-vanishing-gradient-problem-69bf08b15484

JHU DL slides

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k9batm1s2hxpc



#### Solution



Change activation function like ReLU

Use batch normalization

Change network structure like LSTM, RNN, Gated Recurrent Units (GRU) so as to preserve information over many timesteps.





### [Difference Between a Batch and an Epoch in a Neural Network](https://machinelearningmastery.com/difference-between-a-batch-and-an-epoch/)

> You can think of a for-loop over the number of epochs where each loop proceeds over the training dataset. Within this for-loop is another nested for-loop that iterates over each batch of samples, where one batch has the specified “batch size” number of samples.
>
> ![image.png](https://i.loli.net/2020/03/20/Gc8sqvLgHxFwJ3m.png)

Comparison b/w different batch_size in MNIST

![](https://img-blog.csdn.net/20151112195843957)



[A Gentle Introduction to Mini-Batch Gradient Descent and How to Configure Batch Size](https://machinelearningmastery.com/gentle-introduction-mini-batch-gradient-descent-configure-batch-size/)

> *The presented results confirm that using small batch sizes achieves the best training stability and generalization performance, for a given computational cost, across a wide range of experiments. In all cases the best results have been obtained with batch sizes m = 32 or smaller, often as small as m = 2 or m = 4.*

Recall that in gradient descent (**stochastic/mini-batch/batch**) we have similar concept regarding batch_size



### ==A pretty good optimization post== 

https://frnsys.com/ai_notes/foundations/optimization.html

stochastic gradient descent (SGD) in deep learning optimization

> In fact, stochastic gradient descent can help with finding the global minimum because instead of computing over a single error surface(whole batch gradient descent), you are working with many different error surfaces varying with the example you are current looking at. So it is possible that in one of these surfaces a local minima does not exist or is less pronounced than in others, which make it easier to surpass.
>
> Note, initializations are different across different landscapes. So batch gradient descent still helps find global minimum. The reason we use SGD is the tradeoff b/t computer power and accuracy.





### Batch normalization / Covariate shift

[An Intuitive Explanation of Why Batch Normalization Really Works (Normalization in Deep Learning Part 1)](https://mlexplained.com/2018/01/10/an-intuitive-explanation-of-why-batch-normalization-really-works-normalization-in-deep-learning-part-1/)

> The distribution of inputs from previous layer change are called covariate shift. In deep learning, this is problematic because it forces each intermediate layer to continuously adapt to its changing inputs.

- Improves gradient flow and allows for higher learning rates
- Reduces strong dependence on initialization
- Acts as regularization







### Multi-label vs. Multi-class Classification: Sigmoid vs. Softmax

https://glassboxmedicine.com/2019/05/26/classification-sigmoid-vs-softmax/
https://stats.stackexchange.com/a/410112

> - If you have a multi-label classification problem = there is more than one "right answer" = the outputs are NOT mutually exclusive, then use a sigmoid function on each raw output independently. The sigmoid will allow you to have high probability for all of your classes, some of them, or none of them. Example: classifying diseases in a chest x-ray image. The image might contain pneumonia, emphysema, and/or cancer, or none of those findings. 
>   **sigmoid function is a binary classification and it can give probability of multi-labels**
> - If you have a multi-class classification problem = there is only one "right answer" = the outputs are mutually exclusive, then use a softmax function. The softmax will enforce that the sum of the probabilities of your output classes are equal to one, so in order to increase the probability of a particular class, your model must correspondingly decrease the probability of at least one of the other classes. Example: classifying images from the MNIST data set of handwritten digits. A single picture of a digit has only one true identity - the picture cannot be a 7 and an 8 at the same time.
>   **softmax function weighs / normalize all the probabilities like compositional analysis so it can estimate the most likely label**



https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k5zhsdztzpa41r

![image.png](https://i.loli.net/2020/01/30/UC62BfdwOH9GFY4.png)

### hinge loss vs. softmax

Softmax

stanford cs231n

![image.png](https://i.loli.net/2020/05/15/uyGPcWM5UjpATB8.png)



https://medium.com/activating-robotic-minds/demystifying-cross-entropy-e80e3ad54a8

![image.png](https://i.loli.net/2020/03/10/VwiF7kERYog6SQB.png)





















[stanford-cs-230-deep-learning](https://github.com/afshinea/stanford-cs-230-deep-learning)

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-deep-learning-tips-and-tricks

### cheat sheets for CNN, RNN, and DL tips and tricks

![image.png](https://i.loli.net/2020/01/07/6h7MoLeUWBpOI48.png)





[Neural Networks: Feedforward and Backpropagation Explained & Optimization](https://mlfromscratch.com/neural-networks-explained/)

**activation function reside in hidden layer (typically identity) and output layer**

Why activation function?

- introduce non-linearity into neural network

![](https://mlfromscratch.com/content/images/2019/12/activationfunctions.2019-08-01-16_58_53.gif)







[How Deep Neural Networks Work](https://www.youtube.com/watch?v=ILsA4nyG7I0)



[3Blue1Brown: Neural networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)







## Resources

JHU DL Recap

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k8yqdpv04ek4gz



==[A Step by Step Backpropagation Example](https://mattmazur.com/2015/03/17/a-step-by-step-backpropagation-example/) with a single training set gives intuition on backpropagation.==



[Stanford CS224n: Natural Language Processing with Deep Learning](http://web.stanford.edu/class/cs224n/readings/cs224n-2019-notes03-neuralnets.pdf)

[DIVE INTO DEEP LEARNING](https://www.d2l.ai/index.html)







==A collection of various deep learning architectures, models, and tips==

https://github.com/rasbt/deeplearning-models



