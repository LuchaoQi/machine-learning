[toc]





## Statistics



### [kappa statistic](http://sofasofa.io/forum_main_post.php?postid=1000321)

similarity between samples based on confusion matrix



### [stanford-cme-106-probability-and-statistics](https://github.com/shervinea/stanford-cme-106-probability-and-statistics)



### [Probability Cheat Sheet](https://web.cs.elte.hu/~mesti/valszam/kepletek)

pdf / cdf

### basic Rules for the Mean, Variance, Covariance, and Correlation for the expectation of random variables

http://www.kaspercpa.com/statisticalreview.htm



## AUC & PR & Confusion Matrix



### [<mark>F1 Score vs ROC AUC vs Accuracy vs PR AUC: Which Evaluation Metric Should You Choose?</mark>](https://neptune.ai/blog/f1-score-accuracy-roc-auc-pr-auc)



### [When to Use ROC vs. Precision-Recall Curves?](https://machinelearningmastery.com/roc-curves-and-precision-recall-curves-for-classification-in-python/)

> Generally, the use of ROC curves and precision-recall curves are as follows:
>
> - ROC curves should be used when there are roughly equal numbers of observations for each class.
> - Precision-Recall curves should be used when there is a moderate to large class imbalance.

Intuition: think about the fistula exmaple in previous internship, the dataset is pretty imbalanced and the AUROC is around 0.9 yet the model doesn't really perform well. Why? Assume the model predicts all the samples as negatives and the ground truth consists of 0.1 positives and 0.9 negatives. The result would be overly optimistic.



### [Measuring Performance: AUPRC and Average Precision](https://glassboxmedicine.com/2019/03/02/measuring-performance-auprc/)

> It’s a bit trickier to interpret AUPRC than it is to interpret AUROC ([the area under the receiver operating characteristic](https://glassboxmedicine.com/2019/02/23/measuring-performance-auc-auroc/)). That’s because the baseline for AUROC is always going to be 0.5 — a random classifier, or a coin toss, will get you an AUROC of 0.5. But with AUPRC, the baseline is equal to the fraction of positives ([Saito et al.](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0118432)), where the fraction of positives is calculated as (# positive examples / total # examples). That means that different classes have different AUPRC baselines. A class with 12% positives has a baseline AUPRC of 0.12, so obtaining an AUPRC of 0.40 on this class is great. However a class with 98% positives has a baseline AUPRC of 0.98, which means that obtaining an AUPRC of 0.40 on this class is bad.



### https://en.wikipedia.org/wiki/F1_score

![](https://i.loli.net/2020/08/28/nUZ6DvgG7WMuFsO.png)





### Intuition

For binary classifier, we use **threshold** to distinguish classifications.

e.g. in logistic regression, y_pred > **0.5**  or y_pred > **0.4**

For each threshold, we got a confusion matrix and then we calculate different metrics thus we can plot 

ROC(TPR VS. FPR)

![](https://i.loli.net/2020/08/28/5v8HcaZu7xzKPA6.png)

 PRC(PRECISION VS. RECALL)

![](https://i.loli.net/2020/08/28/p9oAmlrTgsZEuzv.png)





## Bootstrap vs. Shuffle vs. Permutation

https://stanford.edu/~shervine/teaching/cme-106/cheatsheet-probability#introduction

![](https://i.loli.net/2021/04/10/wMoZnhd6NG5Omle.png)

Bootstrap (shuffle with replacement): any test or metric that relies on random sampling **with** replacement

Shuffle (纸牌发牌): random numbers **without** replacement - shuffle == permutation in some cases

Permutation (排列 order matters): Permutation allows replacement but we do it **without** replacement



### Permutation test



example testing the difference: https://www.jwilber.me/permutationtest/

example testing the matchness/co-occurrence: https://www.uvm.edu/~ngotelli/manuscriptpdfs/Ecology81p2606.pdf

> The histogram is a frequency distribution for testing the null hypothesis that Xobs was drawn at random from the distribution of Xsim.



Typical R code for permutation is shown below:

```R
x = c(1,2,3,4,5,6,7,8,9)
y = c(T,F,T,F,T,F,T,F,T)
obs = abs(mean(x[y]) - mean(x[!y]))
nosim = 1000
out = sapply(1 : nosim,
             function(i){
               py = sample(y)
               abs(mean(x[py]) - mean(x[!py]))
             }
)
hist(out)
obs
out >= obs
mean(out >= obs)

# abs(repeated results) >= abs(observed results)
```



## Test & Distributions



### Cross-Entropy Versus KL Divergence

https://machinelearningmastery.com/cross-entropy-for-machine-learning/

```python
# calculate entropy between two distributions
# calculate cross entropy
def cross_entropy(p, q):
	return -sum([p[i]*log2(q[i]) for i in range(len(p))])

# calculate the kl divergence
def kl_divergence(p, q):
	return sum(p[i] * log2(p[i]/q[i]) for i in range(len(p)))
```



### [T-test 知乎](https://zhuanlan.zhihu.com/p/38243421)

![](https://pic1.zhimg.com/80/v2-67bec9e25f295b5d05659bd57722ae74_1440w.jpg)

### [distribution-is-all-you-need](https://github.com/graykode/distribution-is-all-you-need)

![](https://github.com/graykode/distribution-is-all-you-need/raw/master/overview.png)

