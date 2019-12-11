**Bootstrap**

**Randomly choose features (usually around  $\sqrt {n} $  ) to build hundreds of trees so we can get a random forest**

Usage

Run each subject data (e.g. 0/1 response) over the whole random forest (501 trees) so we got a contingency matrix for each subject

|  0   |  1   |
| :--: | :--: |
| 250  | 251  |

`1` receives most votes so this test data is predicted as `1` and we can know 

`this subject it's correctly labled or not`

​	Note:

- The variety makes RF more effective than single tree

- These steps are called Bagging (Bootstrap + Aggregate)Evaluation



Evaluation

Feed out-of-bag dataset/ test dataset (e.g. 100 subjects) into RF

**Repeat steps aforementioned and compile results**

we can get a contingency matrix of prediction 

| correctly predicted | not correctly predicted |
| :-----------------: | :---------------------: |
|         90          |           10            |

So out-of-bag error is $\dfrac {90}{90 + 10}=0.9$


