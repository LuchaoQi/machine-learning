[toc]







### Stacking

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





### combo

>[combo](https://github.com/yzhao062/combo) 
>
>[wechat](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247487707&idx=1&sn=3d77d7ad4bc03aedb52b3b55809559c8&chksm=e870c196df0748801c848f488e013c7920b7377a26fe37706c42c27ab25884c751a5fbe509a3&mpshare=1&scene=1&srcid=&sharer_sharetime=1575732426582&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=6c7cfae268597b4d1fd7ff6a79e6a7345c522c7fc8b429701aaebd0d54661d54a04df22ccefed44fb857935d12feca3efb6de47f8dbcf9bb1bb95218e8a22780c3803985fe6cfd2975936bf57a4d98bc&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62070158&lang=en&exportkey=A%2BJ5EsHi5lUcQFEzVsxVR5I%3D&pass_ticket=tyzEx61N28yEuIRkZAHhRyTkW6j%2F83DKcPF8jnc9bESYIMXHWaxMDGPYXA%2BFmLoq) 



