[toc]



### Notes

Select your feature with lowest `Gini index`.

Calculate error term $\epsilon = \sum w$ based on weights $w$

Update the sample weights (amount of say) and normalize them so it looks like a distribution
$$
w*e^{0.5log(\dfrac{1-\epsilon}{\epsilon})}\\
w*e^{-0.5log(\dfrac{1-\epsilon}{\epsilon})}
$$
Randomly pick a number b/w 0,1 and pick the sample based on distribution until the new collection is the same size as original

Decide which stumps receive most amount of say



### Resources

https://github.com/LuchaoQi/books/tree/master/Lihang

https://piazza.com/class_profile/get_resource/k1zer6tg6s04bb/k73pxhr3im7655

[Basic Ensemble Learning (Random Forest, AdaBoost, Gradient Boosting)- Step by Step Explained](https://towardsdatascience.com/basic-ensemble-learning-random-forest-adaboost-gradient-boosting-step-by-step-explained-95d49d1e2725)

[AdaBoost, Clearly Explained](https://www.youtube.com/watch?v=LsK-xG1cLYA&feature=youtu.be)

[机器学习实战教程（十）：提升分类器性能利器-AdaBoost](https://cuijiahua.com/blog/2017/11/ml_10_adaboost.html)

>- Bagging + Decision Tree = Random Forest
>- Boosting + Decision Tree = AdaBoost
>- Gradient Boosting + Decision Tree = GBDT
