[toc]















![](https://miro.medium.com/max/1400/1*cuOmGT7NevP9oJFJfVpRKA.png)







## Posts



[一文总结词向量的计算、评估与优化](https://mp.weixin.qq.com/s/RrR-iAdlnuSnRai1cwcw3A)





https://cs224d.stanford.edu/lecture_notes/notes1.pdf

![](https://i.loli.net/2020/05/28/uwtc7UfM6KHrB1O.png)





![](https://i.loli.net/2020/05/28/1HPcuOv9oreLJIm.png)



http://alexminnaar.com/2015/04/12/word2vec-tutorial-skipgram.html



http://papers.nips.cc/paper/5021-distributed-representations-of-words-and-phrases-and-their-compositionality.pdf



https://towardsdatascience.com/a-beginners-guide-to-word-embedding-with-gensim-word2vec-model-5970fa56cc92





## Skip-Gram







### problem with one-hot encoding and why we need improve it

https://towardsdatascience.com/nlp-101-word2vec-skip-gram-and-cbow-93512ee24314

```
## Current situation 
Similarity(Mango, Strawberry) == Similarity(Mango, City) == 0
## Ideal situation
Similarity(Mango, Strawberry) >> Similarity(Mango, City)
** Note: Similarity(a,b) = a.b/(||a||*||b||) Cosine similarity
```



### ==Word2Vec Tutorial - The Skip-Gram Model==

http://mccormickml.com/tutorials/#word2vec

http://mccormickml.com/2016/04/19/word2vec-tutorial-the-skip-gram-model/



![image.png](https://i.loli.net/2020/05/16/tNiwuYpVo7PbI6W.png)

> 10,000 positions
>
> ​	10,000 words for one-hot encoding
>
> The 300 features 
>
> ​	learned by the neural network, and there's no obvious meaning that you can ascribe to them. The number 300 corresponds to the number of neurons in the hidden layer of the network. If you build your neural network with 100 neurons in the hidden layer, then your word vectors would have 100 features.
>
> For skip-gram, There is no activation function on the hidden layer neurons, but the output neurons use softmax.





![image.png](https://i.loli.net/2020/05/16/sohj5PLkzUG1Axw.png)



How do we use that?

![](http://mccormickml.com/assets/word2vec/output_weights_function.png)





### Learning the Weights with Backpropagation and Stochastic Gradient Descent

http://alexminnaar.com/2015/04/12/word2vec-tutorial-skipgram.html



![image.png](https://i.loli.net/2020/05/16/MniDhJ6tgSjOcNm.png)



### Word2Vec Tutorial Part 2 - Negative Sampling



http://mccormickml.com/2017/01/11/word2vec-tutorial-part-2-negative-sampling/





## CBOW

https://piazza.com/class_profile/get_resource/k5so7na4z3n3st/k6cr5719st54an



Similar to skip-gram models

* getting the vector representation of continuous surrounding words
* feed into network model



http://alexminnaar.com/2015/05/18/word2vec-tutorial-continuousbow.html

![](http://alexminnaar.com/assets/cbow.png)

### Resources



http://alexminnaar.com/2015/05/18/word2vec-tutorial-continuousbow.html





## Word vectors basics



http://web.stanford.edu/class/cs224n/slides/cs224n-2020-lecture01-wordvecs1.pdf

http://web.stanford.edu/class/cs224n/slides/cs224n-2020-lecture02-wordvecs2.pdf



![image.png](https://i.loli.net/2020/05/16/GFTWUtQbVSawjsA.png)



Note: word vectors are sometimes called word embeddings or word representations. They are a distributed representation.





![image.png](https://i.loli.net/2020/05/16/PkECfHwtjuJsIcK.png)







## Resources

https://cs224d.stanford.edu/lecture_notes/notes1.pdf



http://mccormickml.com/2016/04/27/word2vec-resources/









http://web.stanford.edu/class/cs224n/readings/

http://web.stanford.edu/class/cs224n/slides/







https://piazza.com/jhu/spring2020/cs482682/resources

[建模角度理解word embedding及tensorflow实现](https://www.jianshu.com/p/d44ce1e3ec2f)

https://nbviewer.jupyter.org/github/danielfrg/word2vec/blob/master/examples/word2vec.ipynb