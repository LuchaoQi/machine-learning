Basics

https://towardsdatascience.com/the-vanishing-gradient-problem-69bf08b15484



> Certain activation functions, like the sigmoid function, squishes a large input space into a small input space between 0 and 1. Therefore, a large change in the input of the sigmoid function will cause a small change in the output. Hence, the derivative becomes small.
>
> For shallow network with only a few layers that use these activations, this isn’t a big problem. However, when more layers are used, it can cause the gradient to be too small for training to work effectively.



JHU DL slides

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k9batm1s2hxpc





### Solutions



#### Use activation function like ReLU

#### Use batch normalization

#### Use network structure like LSTM, RNN, Gated Recurrent Units (GRU) so as to preserve information over many timesteps.