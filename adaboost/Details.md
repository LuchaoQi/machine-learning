Select your feature with lowest `Gini index`. In this case, we choose `Weight`.



![image-20191213165051081](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213165051081.png)



Another example using `Chest Pain`

![image-20191213164309781](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213164309781.png)

Amount of Say 
$$
\dfrac {1}{2}\log \left( \dfrac {1-\varepsilon }{\varepsilon }\right)
$$


![image-20191213164355168](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213164355168.png)



Since the first stump we made using `Weight` incorrectly classified one sample (Patient Weight = 167). We will emphasize the need for the next stump to correctly classify it by `increasing` its sample weight and `decreasing` other sample weights.

![image-20191213165758532](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213165758532.png)



For correctly classified samples



![image-20191213170317594](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213170317594.png)



Update and normalize the sample weights 

![image-20191213170455334](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213170455334.png)



For the dataset next stump will use, randomly pick a number b/w 0,1



![image-20191213170744938](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213170744938.png)



![image-20191213170932211](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213170932211.png)

continue to pick random numbers until the new collection is the same size as the original.



![image-20191213171057479](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213171057479.png)

![image-20191213171155657](C:\Users\lcqi\OneDrive\Desktop\machine learning\adaboost\Example\image-20191213171155657.png)