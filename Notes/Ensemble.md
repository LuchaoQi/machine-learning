[toc]



[Bagging, boosting and stacking in machine learning](https://stats.stackexchange.com/questions/18891/bagging-boosting-and-stacking-in-machine-learning)

![](https://i.stack.imgur.com/RFfqb.png)







[机器学习中Bagging和Boosting的区别](https://blog.csdn.net/u013709270/article/details/72553282)

Bagging和Boosting的区别：

1）样本选择上：

Bagging：训练集是在原始集中有放回选取的，从原始集中选出的各轮训练集之间是独立的。

Boosting：每一轮的训练集不变，只是训练集中每个样例在分类器中的权重发生变化。而权值是根据上一轮的分类结果进行调整。

2）样例权重：

Bagging：使用均匀取样，每个样例的权重相等

Boosting：根据错误率不断调整样例的权值，错误率越大则权重越大。

3）预测函数：

Bagging：所有预测函数的权重相等。

Boosting：每个弱分类器都有相应的权重，对于分类误差小的分类器会有更大的权重。

4）并行计算：

Bagging：各个预测函数可以并行生成

Boosting：各个预测函数只能顺序生成，因为后一个模型参数需要前一轮模型的结果。



<mark>A Primer to Ensemble Learning – Bagging and Boosting </mark>



![](https://i.loli.net/2021/01/05/1MQHqmW9JIljDhc.png)



![](https://i.loli.net/2021/01/05/9peIafxYXlEwi5F.png)





[Ensemble methods: bagging, boosting and stacking](https://towardsdatascience.com/ensemble-methods-bagging-boosting-and-stacking-c9214a10a205)



![](https://miro.medium.com/max/1400/1*5pA6iY-qDP2JIsLoyfje-Q@2x.png)



### Bagging



![](https://miro.medium.com/max/2000/1*zAMhmZ78a6V9W878zfk5eA@2x.png)

![](https://miro.medium.com/max/2000/1*jEbEHwvfUzAUI00muEAVGw@2x.png)



Random Forest

![](https://miro.medium.com/max/2000/1*_B5HX2whbTs3DS8M6YBD_w@2x.png)





### Boosting



![](https://miro.medium.com/max/2000/1*6JbndZ2zY2c4QqS73HQ47g@2x.png)

![](https://miro.medium.com/max/892/1*YUJJ5nDbhBi0SkFeccsTxQ@2x.png)



![](https://miro.medium.com/max/1400/1*7wz2AIdH0pZSIUAxveLlIg@2x.png)

![](https://miro.medium.com/max/1400/1*4Ytrff-V4Xnh0_FKN_t1PA@2x.png)



### Stacking



![](https://miro.medium.com/max/1400/1*ZucZsXkOwrpY2XaPh6teRw@2x.png)

![](https://miro.medium.com/max/4800/1*avYNzmLUeqKr1zWPkn6cwg@2x.png)





### Coding

check out package pycaret (preferred) / scikit-learn



pycaret

```python
ridge = create_model('ridge')
lda = create_model('lda')
gbc = create_model('gbc')
xgboost = create_model('xgboost')
stacker = stack_models(estimator_list = [ridge,lda,gbc], meta_model = xgboost)
```



scikit-learn

https://machinelearningmastery.com/stacking-ensemble-machine-learning-with-python/

```python
# compare ensemble to each baseline classifier
from numpy import mean
from numpy import std
from sklearn.datasets import make_classification
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import RepeatedStratifiedKFold
from sklearn.linear_model import LogisticRegression
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB
from sklearn.ensemble import StackingClassifier
from matplotlib import pyplot

# get the dataset
def get_dataset():
	X, y = make_classification(n_samples=1000, n_features=20, n_informative=15, n_redundant=5, random_state=1)
	return X, y

# get a stacking ensemble of models
def get_stacking():
	# define the base models
	level0 = list()
	level0.append(('lr', LogisticRegression()))
	level0.append(('knn', KNeighborsClassifier()))
	level0.append(('cart', DecisionTreeClassifier()))
	level0.append(('svm', SVC()))
	level0.append(('bayes', GaussianNB()))
	# define meta learner model
	level1 = LogisticRegression()
	# define the stacking ensemble
	model = StackingClassifier(estimators=level0, final_estimator=level1, cv=5)
	return model

# get a list of models to evaluate
def get_models():
	models = dict()
	models['lr'] = LogisticRegression()
	models['knn'] = KNeighborsClassifier()
	models['cart'] = DecisionTreeClassifier()
	models['svm'] = SVC()
	models['bayes'] = GaussianNB()
	models['stacking'] = get_stacking()
	return models

# evaluate a give model using cross-validation
def evaluate_model(model, X, y):
	cv = RepeatedStratifiedKFold(n_splits=10, n_repeats=3, random_state=1)
	scores = cross_val_score(model, X, y, scoring='accuracy', cv=cv, n_jobs=-1, error_score='raise')
	return scores

# define dataset
X, y = get_dataset()
# get the models to evaluate
models = get_models()
# evaluate the models and store results
results, names = list(), list()
for name, model in models.items():
	scores = evaluate_model(model, X, y)
	results.append(scores)
	names.append(name)
	print('>%s %.3f (%.3f)' % (name, mean(scores), std(scores)))
# plot model performance for comparison
pyplot.boxplot(results, labels=names, showmeans=True)
pyplot.show()
```

