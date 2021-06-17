[TOC]





> Decision trees split nodes based on node impurity (gini / entropy / variance / chi squared).
>
> In random forest, for each node level, a random subset of <mark>full features</mark> were chosen and we split node using the same method in decision tree. Note already used feature should not be used <mark>within the same branch</mark>. 
>
> When training, each tree in a random forest learns from a random sample of the data points. <mark>The samples are drawn with replacement, known as bootstrapping, which means that some samples will be used multiple times in a single tree.</mark> Then bag the output of all the decision trees at the end. 
>
> When calculating feature importance, each tree has its own out-of-bag sample of data that was not used during construction. First, the prediction accuracy on the out-of-bag sample is measured. Then, <mark>the values of the variable in the out-of-bag-sample are randomly shuffled, keeping all other variables the same. Finally, the decrease in prediction accuracy on the shuffled data is measured.</mark> The mean decrease in accuracy across all trees is reported.



### [Random forest vs. Adaboost vs. GBDT](https://cuijiahua.com/blog/2017/11/ml_10_adaboost.html)

> - Bagging + 决策树 = 随机森林
> - AdaBoost + 决策树 = 提升树
> - Gradient Boosting + 决策树 = GBDT

### [Why bagging multiple trees sometimes doesn't improve the performance of random forest?](https://machinelearningmastery.com/bagging-and-random-forest-ensemble-algorithms-for-machine-learning/)

The problem with boosted trees is that they are greedy and likely to be overfitted. As such, even with bagging, those trees can have lots of structural similarities and thus have high correlation in their predictions. e.g. suggestions from three same-level engineers in a team are highly similar and can be viewed as only one suggestion from high-level.

With that saying, combining predictions from trees that are uncorrelated or at best weakly correlated works better. That's why randomness is important in random forest - random subset of features ensures that trees are highly structurally unsimilar.

### [How does random forest introduce randomness?](https://towardsdatascience.com/an-implementation-and-explanation-of-the-random-forest-in-python-77bf308a9b76)

1. Bootstrap samples when training trees
2. Random subset of all features are chosen at node level when growing trees

### [In Random Forest, why is a random subset of features chosen at the node level rather than at the tree level?](https://stats.stackexchange.com/questions/357990/in-random-forest-why-is-a-random-subset-of-features-chosen-at-the-node-level-ra)

https://stats.stackexchange.com/a/405150/272857

### [Does random forest re-use features at each node when generating a decision tree?](https://datascience.stackexchange.com/questions/10713/does-random-forest-re-use-features-at-each-node-when-generating-a-decision-tree)

![](https://i.stack.imgur.com/l6r4F.jpg)



### How is Variable Importance Calculated for a Random Forest? %IncMSE / IncNodePurity interpretation

https://www.displayr.com/how-is-variable-importance-calculated-for-a-random-forest/

https://stats.stackexchange.com/a/162590

> %IncMSE is the most robust and informative measure. It is the increase in mse of predictions(estimated with out-of-bag-CV) as a result of variable j being permuted(values randomly shuffled).
>
> 1. grow regression forest. Compute OOB-mse, name this mse0.
> 2. for 1 to j var: permute values of column j, then predict and compute OOB-mse(j)
> 3. %IncMSE of j'th is (mse(j)-mse0)/mse0 * 100%
>
> the higher number, the more important
>
> IncNodePurity relates to the loss function which by best splits are chosen. The loss function is mse for regression and gini-impurity for classification. More useful variables achieve higher increases in node purities, that is to find a split which has a high inter node 'variance' and a small intra node 'variance'. IncNodePurity is biased and should only be used if the extra computation time of calculating %IncMSE is unacceptable. Since it only takes ~5-25% extra time to calculate %IncMSE, this would almost never happen.
>
> [A similar question and answer](https://stats.stackexchange.com/questions/12605/measures-of-variable-importance-in-random-forests)

### Gini Calculation

![image.png](https://i.loli.net/2020/10/30/hWOXZV4BHsu3gJT.png)



![image.png](https://i.loli.net/2020/10/30/tEkwbMisLg5q8rv.png)

​	

### R code

```R
library(randomForest)
set.seed(111)
id = sample(dim(y)[1],0.8*dim(y)[1])
fit = randomForest(BMI ~ ., data = y,ntree = 2000,
                     subset = id,
                     importance = T)
varImpPlot(fit,
           main = 'Variable Importance Measured by Random Forest')
```





### Resources



[StatQuest: Random Forests Part 1 - Building, Using and Evaluating](https://www.youtube.com/watch?v=J4Wdy0Wc_xQ&feature=youtu.be)

[Build a Random Forest Algorithm](https://enlight.nyc/projects/random-forest)

[How is Variable Importance Calculated for a Random Forest?](https://www.displayr.com/how-is-variable-importance-calculated-for-a-random-forest/)

[How to interpret Mean Decrease in Accuracy and Mean Decrease GINI in Random Forest models](https://stats.stackexchange.com/questions/197827/how-to-interpret-mean-decrease-in-accuracy-and-mean-decrease-gini-in-random-fore)

[Adaboost in Random Forest](https://www.youtube.com/watch?v=LsK-xG1cLYA&feature=youtu.be)







### Model Construction: Bootstrap/ Bagging

Randomly choose features (usually around  $\sqrt {n} $  ) to build hundreds of decision trees so we can get a random forest

Usage

Run each subject data (e.g. 0/1 response) over the whole random forest (501 trees) so we got a contingency matrix for each subject

|  0   |  1   |
| :--: | :--: |
| 250  | 251  |

`1` receives most votes so this test data is predicted as `1` and we can know 

`this subject it's correctly labled or not`

​	Note:

- The variety makes RF more effective than single tree

- These steps are called Bagging (Bootstrap + Aggregate)Evaluation



Evaluation

Feed out-of-bag dataset/ test dataset (e.g. 100 subjects) into RF

**Repeat steps aforementioned and compile results**

we can get a contingency matrix of prediction 

| correctly predicted | not correctly predicted |
| :-----------------: | :---------------------: |
|         90          |           10            |

So out-of-bag error is $\dfrac {90}{90 + 10}=0.9$





### Pros

* Do not require feature engineering (scaling and normalization)

* Can be used to extract variable importance (ISLR page 330)

  ![varimpplot.png](https://i.loli.net/2020/01/13/WTYAq9LPz8K7v3m.png)

* Autofill missing value & ability to handle missing data

  [StatQuest: Random Forests Part 2: Missig data and clustering](https://www.youtube.com/watch?v=nyxTdL_4Q-Q&feature=youtu.be)

  [Jump Start your Modeling with Random Forests](https://www.elderresearch.com/blog/modeling-with-random-forests)

* Robust to outliers 

  [How to Make Your Machine Learning Models Robust to Outliers](https://heartbeat.fritz.ai/how-to-make-your-machine-learning-models-robust-to-outliers-44d404067d07)
  
  [Why are tree-based models robust to outliers?](https://www.quora.com/Why-are-tree-based-models-robust-to-outliers)
  
  > **Robustness to Outliers** – Random Forests use trees, which split the data into groups (repeatedly) according to whether a case is above or below a selected threshold value on a selected feature variable.  It doesn’t matter how much higher it is, for instance, just if it’s higher.  Thus, *input outliers* don’t have extra influence, like they do in regression, for instance, where they can become known as leverage points.  Also, *output outliers* will affect the estimate of the leaf node they are in, but not the values of any other leaf node.  Again, this is different from other methods – ones John Elder calls “consensus” methods, like regression or neural networks – where every data point affects the estimate at every other data point.  Instead, tree methods are “contributory” methods, where only local points – those in the same leaf node – affect a given point’s estimate.  So output outliers have a “quarantined” effect. Thus, outliers that would wildly distort the accuracy of some algorithms have less of an effect on the prediction of a Random Forest. ([Jump Start your Modeling with Random Forests](https://www.elderresearch.com/blog/modeling-with-random-forests))



### Cons

* Prone to overfitting in case of noisy data
