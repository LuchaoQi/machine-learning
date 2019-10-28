**Model**

1. Bootstrap
2. Randomly choose features (usually around  $\sqrt {n} $  ) to build hundreds of trees so we can get a random forest
3. Usage

Run each subject data (0/1 response) over the whole random forest (501 trees) so we got a contingency matrix for each subject

|  0   |  1   |
| :--: | :--: |
| 250  | 251  |

`1` receives most votes so this test data is predicted as `1` and we can know if it's `correctly labled or not`

​	Note:

- The variety makes RF more effective than single tree

- Step1 ~ Step3 are called Bagging (Bootstrap + Aggregate)Evaluation

4. Evaluation

Feed out-of-bag dataset/ test dataset (e.g. 100 subjects) from step1 into RF

**Repeat step3 for each subject**

we can get a contingency matrix of prediction 

| correctly predicted | not correctly predicted |
| :-----------------: | :---------------------: |
|         90          |           10            |

So out-of-bag error is $\dfrac {90}{90 + 10}=0.9$