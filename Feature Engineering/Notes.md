

### Notes

https://github.com/fengdu78/Data-Science-Notes/tree/master/9.feature-engineering



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






