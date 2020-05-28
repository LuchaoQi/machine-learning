

https://www.simplilearn.com/tutorials/deep-learning-tutorial/deep-learning-interview-questions

> While training an RNN, your slope can become either too small or too large; this makes the training difficult. When the slope is too small, the problem is known as a “Vanishing Gradient.” When the slope tends to grow exponentially instead of decaying, it’s referred to as an “Exploding Gradient.” Gradient problems lead to long training times, poor performance, and low accuracy.

![](https://www.simplilearn.com/ice9/free_resources_article_thumb/16-what-are-vanishing-and-exploding-gradients-1.jpg)



## Vanishing

Basics

https://towardsdatascience.com/the-vanishing-gradient-problem-69bf08b15484



> Certain activation functions, like the sigmoid function, squishes a large input space into a small input space between 0 and 1. Therefore, a large change in the input of the sigmoid function will cause a small change in the output. Hence, the derivative becomes small.
>
> For shallow network with only a few layers that use these activations, this isn’t a big problem. However, when more layers are used, it can cause the gradient to be too small for training to work effectively.



JHU DL slides

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k9batm1s2hxpc





### Solutions



* Use activation function like ReLU

* Use batch normalization

* Use network structure like LSTM, RNN, Gated Recurrent Units (GRU) so as to preserve information over many timesteps.