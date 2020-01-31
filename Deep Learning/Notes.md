### Notes







Multi-label vs. Multi-class Classification: Sigmoid vs. Softmax
https://glassboxmedicine.com/2019/05/26/classification-sigmoid-vs-softmax/
https://stats.stackexchange.com/a/410112

> - If you have a multi-label classification problem = there is more than one "right answer" = the outputs are NOT mutually exclusive, then use a sigmoid function on each raw output independently. The sigmoid will allow you to have high probability for all of your classes, some of them, or none of them. Example: classifying diseases in a chest x-ray image. The image might contain pneumonia, emphysema, and/or cancer, or none of those findings.
> - If you have a multi-class classification problem = there is only one "right answer" = the outputs are mutually exclusive, then use a softmax function. The softmax will enforce that the sum of the probabilities of your output classes are equal to one, so in order to increase the probability of a particular class, your model must correspondingly decrease the probability of at least one of the other classes. Example: classifying images from the MNIST data set of handwritten digits. A single picture of a digit has only one true identity - the picture cannot be a 7 and an 8 at the same time.





[A Step by Step Backpropagation Example](https://mattmazur.com/2015/03/17/a-step-by-step-backpropagation-example/) with a single training set gives intuition on backpropagation. 



[A Gentle Introduction to Mini-Batch Gradient Descent and How to Configure Batch Size](https://machinelearningmastery.com/gentle-introduction-mini-batch-gradient-descent-configure-batch-size/)

> *The presented results confirm that using small batch sizes achieves the best training stability and generalization performance, for a given computational cost, across a wide range of experiments. In all cases the best results have been obtained with batch sizes m = 32 or smaller, often as small as m = 2 or m = 4.*



[stanford-cs-230-deep-learning](https://github.com/afshinea/stanford-cs-230-deep-learning)

https://stanford.edu/~shervine/teaching/cs-230/cheatsheet-deep-learning-tips-and-tricks

cheat sheets for CNN, RNN, and DL tips and tricks

![image.png](https://i.loli.net/2020/01/07/6h7MoLeUWBpOI48.png)







[But what is a Neural Network? | Deep learning, chapter 1](https://www.youtube.com/watch?v=aircAruvnKk&list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)

> when the slope is flattening out towards the minimum your steps get smaller to help you from `overshooting` . 

![](https://mmbiz.qpic.cn/mmbiz_jpg/vI9nYe94fsFIyfpbd6KHUrNNBQ59hcRW6DArcNq57zMicVknibcfhJsxIdXl8E7eRpA8aw2eQBsrnnSTKXDreIuA/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)







https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k5zhsdztzpa41r

![image.png](https://i.loli.net/2020/01/30/UC62BfdwOH9GFY4.png)





[Neural Networks: Feedforward and Backpropagation Explained & Optimization](https://mlfromscratch.com/neural-networks-explained/)



![](https://mlfromscratch.com/content/images/2019/12/activationfunctions.2019-08-01-16_58_53.gif)



[How Deep Neural Networks Work](https://www.youtube.com/watch?v=ILsA4nyG7I0)



[What is backpropagation really doing? | Deep learning, chapter 3](https://www.youtube.com/watch?v=Ilg3gGewQ5U&list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi&index=4&t=0s)

we can know how much say (averaged weights) neurons have on next layer



[3Blue1Brown: Neural networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)

![](https://i.loli.net/2020/01/03/qNDnShE1XFzRbAw.png)

![](https://i.loli.net/2020/01/03/XPZTrnYVwIv7pyR.png)

