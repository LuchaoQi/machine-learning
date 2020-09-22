[TOC]







## Posts & Resources



### [Tidyverse pipes in Pandas](https://stmorse.github.io/journal/tidyverse-style-pandas.html)



![image-20200922114727077](https://i.loli.net/2020/09/22/ARQTBiLtO57SNm9.png)

![image-20200922114751020](https://i.loli.net/2020/09/22/XK7Tq5mhGOe19pA.png)



https://bcaffo.github.io/MRIcloudTutorial/longVwide/longVwide.html



### [作图可以参考图之典](http://tuzhidian.com/)



### [Datawhale 数据分析（EDA）学习总结！](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247517999&idx=1&sn=d2b279de42391df4b3acfca3a1088fed&chksm=e8735662df04df74c9409f9229c6dbe5a4f6bcdda81fe31274633575e3104c7d77248ab58cf4&mpshare=1&scene=1&srcid=0730jeBlCzo6CqcsKQo5IEkH&sharer_sharetime=1596081410497&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&exportkey=AwM5S8DLDRy8ZdRY%2BVSsiQ8%3D&pass_ticket=dORmzI2rJPmSiTTJ1Zi%2B65corcsKJJPH6uZpoe6zT%2FMKlPzQoPHVZcbL9F%2FOl7pU&wx_header=0#rd)











### [How to Perform Data Cleaning for Machine Learning with Python](https://machinelearningmastery.com/basic-data-cleaning-for-machine-learning/?__s=j5spgttw6xiv8t5nozzl)





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





### [数据挖掘入门指南！！！](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247490290&idx=1&sn=2c91d01e885e25232bb9fe65808ba46e&chksm=e870cbbfdf0742a943d5c0e972ff2ff7e59664f74aeb246ad422f2ae4f2bd9eb7c99bb903b8f&mpshare=1&scene=1&srcid=&sharer_sharetime=1587258394081&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=d324c761f914ac8398500473e4ce0ea27ddb73b137b8628481ffd7979c31d35f5982af34f2f8ae228794a30969111597e58e50ac6f21d9bb63780685c95336560ba39783230f7658b5db266041f8f518&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62080085&lang=en&exportkey=AyCrknsRchTmsghGn6%2FueS0%3D&pass_ticket=FsZ%2F%2BZdh9drALkPd4ZNDKQfPNSuBgdFQBofkB7QfHhrEkuIr4lHtmKYV2uPVd7bo)



![](https://mmbiz.qpic.cn/mmbiz_png/vI9nYe94fsG9H9sQ4u2liaG5YSH53Mxpsc07MmQlVSHoSicYTY8FwHdiaaES9tlJDKFibVLdWVd4BfM3Boic5a8icgtg/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)





### ==[Tips-of-Feature-engineering](https://github.com/Pysamlam/Tips-of-Feature-engineering)==



[「特征工程」之零基础入门数据挖掘](https://mp.weixin.qq.com/s?__biz=MzIyNjM2MzQyNg==&mid=2247489845&idx=1&sn=511ef0c0b59623809fc476f2f69d027f&chksm=e870c878df07416ea6ade0ea8b94b3cd08444d15d5d7c2029137f8a0bcd9cec24391d94ca2b1&mpshare=1&scene=1&srcid=&sharer_sharetime=1586035394691&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=e51915e870aec09fecd421c9f13df2a8ad67f2fb84f661963b3a24a68f2836c1978f941cb23b2a6507c76e61382b254dd676dbfe7b70f33387f4762de28ab2d8e4e97eea558d6d6d64665633d7344edb&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62070158&lang=en&exportkey=A79Mu3U2x%2FBPzVKke4V24k8%3D&pass_ticket=NplckyX8o6vUFEDBWMdNrDVgAixGk4sOGs%2BIAvg%2Fv7WoYayMzEtNdjnoK1N1IV7Y)



### [The Simple Yet Practical Data Cleaning Codes](https://towardsdatascience.com/the-simple-yet-practical-data-cleaning-codes-ad27c4ce0a38)

> 1. Drop multiple columns
> 2. Change dtypes
> 3. Convert categorical variable to numerical variable
> 4. Check missing data
> 5. Remove strings in columns
> 6. Remove white space in columns
> 7. Concatenate two columns with strings (with condition)
> 8. Convert timestamp(from string to datetime format)



### [How I made top 0.3% on a Kaggle competition](https://www.kaggle.com/lavanyashukla01/how-i-made-top-0-3-on-a-kaggle-competition)



[Are the Skewness and Kurtosis Useful Statistics?](https://www.spcforexcel.com/knowledge/basic-statistics/are-skewness-and-kurtosis-useful-statistics)









