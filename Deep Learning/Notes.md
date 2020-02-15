



[Difference Between a Batch and an Epoch in a Neural Network](https://machinelearningmastery.com/difference-between-a-batch-and-an-epoch/)

> You can think of a for-loop over the number of epochs where each loop proceeds over the training dataset. Within this for-loop is another nested for-loop that iterates over each batch of samples, where one batch has the specified “batch size” number of samples.

Comparison b/w different batch_size in MNIST

![](https://img-blog.csdn.net/20151112195843957)



[A Gentle Introduction to Mini-Batch Gradient Descent and How to Configure Batch Size](https://machinelearningmastery.com/gentle-introduction-mini-batch-gradient-descent-configure-batch-size/)

> *The presented results confirm that using small batch sizes achieves the best training stability and generalization performance, for a given computational cost, across a wide range of experiments. In all cases the best results have been obtained with batch sizes m = 32 or smaller, often as small as m = 2 or m = 4.*

Recall that in gradient descent (**stochastic/mini-batch/batch**) we have similar concept regarding batch_size

























Multi-label vs. Multi-class Classification: Sigmoid vs. Softmax
https://glassboxmedicine.com/2019/05/26/classification-sigmoid-vs-softmax/
https://stats.stackexchange.com/a/410112

> - If you have a multi-label classification problem = there is more than one "right answer" = the outputs are NOT mutually exclusive, then use a sigmoid function on each raw output independently. The sigmoid will allow you to have high probability for all of your classes, some of them, or none of them. Example: classifying diseases in a chest x-ray image. The image might contain pneumonia, emphysema, and/or cancer, or none of those findings.
> - If you have a multi-class classification problem = there is only one "right answer" = the outputs are mutually exclusive, then use a softmax function. The softmax will enforce that the sum of the probabilities of your output classes are equal to one, so in order to increase the probability of a particular class, your model must correspondingly decrease the probability of at least one of the other classes. Example: classifying images from the MNIST data set of handwritten digits. A single picture of a digit has only one true identity - the picture cannot be a 7 and an 8 at the same time.



https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k5zhsdztzpa41r

![image.png](https://i.loli.net/2020/01/30/UC62BfdwOH9GFY4.png)



![](http://cs231n.github.io/assets/svmvssoftmax.png)































[stanford-cs-230-deep-learning](https://github.com/afshinea/stanford-cs-230-deep-learning)

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-deep-learning-tips-and-tricks

cheat sheets for CNN, RNN, and DL tips and tricks

![image.png](https://i.loli.net/2020/01/07/6h7MoLeUWBpOI48.png)





[Neural Networks: Feedforward and Backpropagation Explained & Optimization](https://mlfromscratch.com/neural-networks-explained/)

![](https://mlfromscratch.com/content/images/2019/12/activationfunctions.2019-08-01-16_58_53.gif)







[How Deep Neural Networks Work](https://www.youtube.com/watch?v=ILsA4nyG7I0)



[3Blue1Brown: Neural networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)


