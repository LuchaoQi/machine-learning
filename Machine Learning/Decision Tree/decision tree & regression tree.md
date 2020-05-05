[toc]



JHU ML decision tree/ regression tree/ random forest

https://piazza.com/class_profile/get_resource/k1zer6tg6s04bb/k70upiz3iebkd

Besides Gini index, we can also use information gain





## [StatQuest: Decision Trees](https://www.youtube.com/watch?v=7VeUPuFGJHk)

> select node based on impurity (Gini)
>
> ![image-20191213163625292.png](https://i.loli.net/2020/01/13/RCMrHTyiuLbkz2a.png)
>
> 
>
> ![image-20191213163654251.png](https://i.loli.net/2020/01/13/kHOmVoqiTYvFw6b.png)
>
> Use Gini impurity to decide which feature as node
>
> - use feature with lower Gini (better separation)
>
> And also to decide whether walk down meaning create a sub-node
>
> - make it a leaf node if the Gini impurity is lower before using the feature
>
>   i.e. using the feature will make separation worse
>
>   ![image.png](https://i.loli.net/2020/02/26/U47icV1fuC9oFaw.png)
>
> https://youtu.be/7VeUPuFGJHk?t=839
>
> explain how it works for continuous data / categorical data 









### Pros and Cons

![image.png](https://i.loli.net/2020/02/27/6I8xOuA7HXeEV9a.png)







## [Regression Trees, Clearly Explained!!!](https://youtu.be/g9c66TUylZ4?t=1254)

> continuous variables
>
> ![image.png](https://i.loli.net/2020/02/26/4n9yNpUPMSvE3Z6.png)
>
> ![](https://i.loli.net/2019/12/18/kRlTpMeK5oL6tY9.png)
>
> ![](https://i.loli.net/2019/12/18/72EcLYD4IGHSwkF.png)
>
> For bunch of variables
>
> get the SSR for each variable with the best threshold 
>
> choose the feature with the lowest SSR as root node