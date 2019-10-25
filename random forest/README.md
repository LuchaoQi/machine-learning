# Random Fores

### Model

1. Bootstrap
2. Randoly choose features (usually around  $\sqrt {n} $  ) to build hundreds of trees so we got a random forest
3. Usage

Run each subject data (e.g. 0/1 response) over the whole random forest e.g. 501 trees so we got a contingency matrix for each subject

|  0   |  1   |
| :--: | :--: |
| 250  | 251  |

`1` receives most votes so this test data is predicted as `1` and we can know if it's `correctly labled or not`

​	Note:

* The variety makes RF more effective than single tree

- Step1 ~ Step3 are called Bagging (Bootstrap + Aggregate)Evaluation

4. Evaluation

Feed out-of-bag dataset/ test dataset (e.g. 100 subjects) from step1 into RF

**Repeat step3 for each subject**

we can get a contingency matrix of prediction 

| correctly predicted | not correctly predicted |
| :-----------------: | :---------------------: |
|         90          |           10            |

So out-of-bag error is $\dfrac {90}{90 + 10}=0.9$

### Gini





### Pros

* Do not require feature engineering (scaling and normalization)
* Can be used to extract variable importance ([varImpPlot](https://www.rdocumentation.org/packages/randomForest/versions/4.6-14/topics/varImpPlot))
* Can be used to autofill missing value
* Robust to outliers ([How to Make Your Machine Learning Models Robust to Outliers](https://heartbeat.fritz.ai/how-to-make-your-machine-learning-models-robust-to-outliers-44d404067d07))

### Cons

* Overfitting in case of noisy data



### Resources

[StatQuest: Random Forests Part 1 - Building, Using and Evaluating](https://www.youtube.com/watch?v=J4Wdy0Wc_xQ&feature=youtu.be)