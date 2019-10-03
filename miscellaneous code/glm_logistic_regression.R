# first 3 PCs
y = data.frame(pca$x[,1:3],mortstat = analyticData %>% na.omit %>% select(mortstat))
y$mortstat = as.factor(y$mortstat)
set.seed(100)
# trainIdx = sample(c(TRUE, FALSE), dim(y)[1], replace = TRUE, prob = c(.7, .3))
trainIdx = sample(dim(y)[1],0.7*dim(y)[1])
fit = glm(mortstat ~ ., family = "binomial", data = y, subset = trainIdx)
yPred =  (predict(fit, y[-trainIdx,], type = "response") > 0.5) * 1

ytest = y[-trainIdx, ]
ptab = table(ytest[,"mortstat"], yPred %>% factor(levels = levels(ytest[,"mortstat"] )))
ptab
sum(diag(ptab)) / sum(ptab)