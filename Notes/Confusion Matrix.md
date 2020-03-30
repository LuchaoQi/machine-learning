[TOC]



### Notes



[F1 Score vs ROC AUC vs Accuracy vs PR AUC: Which Evaluation Metric Should You Choose?](https://neptune.ai/blog/f1-score-accuracy-roc-auc-pr-auc)







https://en.wikipedia.org/wiki/F1_score



![image.png](https://i.loli.net/2020/01/15/Qo9BHM4fXNVFKsP.png)







### Intuition



For binary classifier, we use **threshold** to distinguish classifications.

e.g. in logistic regression, y_pred > **0.5**  or y_pred > **0.4**

For each threshold, we got a confusion matrix and then we calculate different metrics thus we can plot 

ROC(TPR VS. FPR)

![](https://i1.wp.com/neptune.ai/wp-content/uploads/roc_auc_curve.png?w=1600&ssl=1)

 PRC(PRECISION VS. RECALL)

![](https://i1.wp.com/neptune.ai/wp-content/uploads/prec_rec_curve.png?w=1600&ssl=1)



### Code



https://machinelearningmastery.com/roc-curves-and-precision-recall-curves-for-classification-in-python/

