# Random Forest

## Resources



[StatQuest: Random Forests Part 1 - Building, Using and Evaluating](https://www.youtube.com/watch?v=J4Wdy0Wc_xQ&feature=youtu.be)

[Build a Random Forest Algorithm](https://enlight.nyc/projects/random-forest)

[How is Variable Importance Calculated for a Random Forest?](https://www.displayr.com/how-is-variable-importance-calculated-for-a-random-forest/)

[How to interpret Mean Decrease in Accuracy and Mean Decrease GINI in Random Forest models](https://stats.stackexchange.com/questions/197827/how-to-interpret-mean-decrease-in-accuracy-and-mean-decrease-gini-in-random-fore)

[Adaboost in Random Forest](https://www.youtube.com/watch?v=LsK-xG1cLYA&feature=youtu.be)









## Notes



**Bootstrap**

**Randomly choose features (usually around  $\sqrt {n} $  ) to build hundreds of decision trees so we can get a random forest**

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











![image.png](https://i.loli.net/2020/02/27/5mX6upNeiMvtEaZ.png)





## Pros

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

## Cons

* Overfitting in case of noisy data
