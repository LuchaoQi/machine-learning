[toc]

## AUC & PR & Confusion Matrix



https://en.wikipedia.org/wiki/F1_score



![](https://i.loli.net/2020/08/28/nUZ6DvgG7WMuFsO.png)



### [==F1 Score vs ROC AUC vs Accuracy vs PR AUC: Which Evaluation Metric Should You Choose?==](https://neptune.ai/blog/f1-score-accuracy-roc-auc-pr-auc)







### Intuition



For binary classifier, we use **threshold** to distinguish classifications.

e.g. in logistic regression, y_pred > **0.5**  or y_pred > **0.4**

For each threshold, we got a confusion matrix and then we calculate different metrics thus we can plot 

ROC(TPR VS. FPR)

![](https://i.loli.net/2020/08/28/5v8HcaZu7xzKPA6.png)

 PRC(PRECISION VS. RECALL)

![](https://i.loli.net/2020/08/28/p9oAmlrTgsZEuzv.png)



### Code



https://machinelearningmastery.com/roc-curves-and-precision-recall-curves-for-classification-in-python/







### 

## Test



### [T-test 知乎](https://zhuanlan.zhihu.com/p/38243421)



### [distribution-is-all-you-need](https://github.com/graykode/distribution-is-all-you-need)