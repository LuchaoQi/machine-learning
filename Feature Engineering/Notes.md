[toc]



### Pipeline



#### [How I made top 0.3% on a Kaggle competition](https://www.kaggle.com/lavanyashukla01/how-i-made-top-0-3-on-a-kaggle-competition)



#### [Datawhale 一文详尽之支持向量机算法！SVM + gridSearch](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247491332&idx=1&sn=a725c3b08aa316edce4ebcc33b296703&chksm=e870ce49df07475f88beb3c255191725fceead8d365721adef4dbfd029ab445e2e955ef6af84&mpshare=1&scene=1&srcid=&sharer_sharetime=1589138577518&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=d324c761f914ac83f364740fdc5de4dd185c4386e0c5340dc9482d85b34539056c85823dd22fa64f97bd5c9875a844dd57b5511090512dc62793a7a8ac5d866a1c179f860a609b381ccdd0fd1fbdc39f&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62080085&lang=en&exportkey=A2I%2BQxKzfIgQzczFd6odkws%3D&pass_ticket=brI2mzO8Bei9ubTp1AqKp9LlM9tFQbjRMdFKagYkIJtNTV2%2FSQO0M6gBXqreowWR)



#### [KNN + gridsearch](https://colab.research.google.com/github/LuchaoQi/books/blob/master/Feature%20Engineering%20Made%20Easy/KNN%20%2B%20GridSearchCV.ipynb)





W

### [Statistical Imputation for Missing Values in Machine Learning](https://machinelearningmastery.com/statistical-imputation-for-missing-values-in-machine-learning/?__s=j5spgttw6xiv8t5nozzl)



```python
# constant imputation strategy and prediction for the hose colic dataset
from numpy import nan
from pandas import read_csv
from sklearn.ensemble import RandomForestClassifier
from sklearn.impute import SimpleImputer
from sklearn.pipeline import Pipeline
# load dataset
url = 'https://raw.githubusercontent.com/jbrownlee/Datasets/master/horse-colic.csv'
dataframe = read_csv(url, header=None, na_values='?')
# split into input and output elements
data = dataframe.values
X, y = data[:, :-1], data[:, -1]
# create the modeling pipeline
pipeline = Pipeline(steps=[('i', SimpleImputer(strategy='constant')), ('m', RandomForestClassifier())])
# fit the model
pipeline.fit(X, y)
# define new data
row = [2,1,530101,38.50,66,28,3,3,nan,2,5,4,4,nan,nan,nan,3,5,45.00,8.40,nan,nan,2,2,11300,00000,00000]
# make a prediction
yhat = pipeline.predict([row])
# summarize prediction
print('Predicted Class: %d' % yhat[0])
```



### https://github.com/fengdu78/Data-Science-Notes/tree/master/9.feature-engineering



```python
# EDA
# df.isnull()
# df.isnull().sum()
# df.count()

df.info()
df.describe()
df.value_counts.plot(kind="bar")
salary_ranges['Grade'].value_counts().sort_values(ascending=False).head(20).plot(kind='bar')
```






