https://www.youtube.com/watch?v=LsK-xG1cLYA&feature=youtu.be



Select your feature with lowest `Gini index`. In this case, we choose `Weight`.



![image-20191213165051081.png](https://i.loli.net/2020/02/27/Kd1xy7YvoPcbRtm.png)



Another example using `Chest Pain`

![image-20191213164309781.png](https://i.loli.net/2020/02/27/xfAcpJKyTMhl3DO.png)

Amount of Say 
$$
\dfrac {1}{2}\log \left( \dfrac {1-\varepsilon }{\varepsilon }\right)
$$


![image-20191213164355168.png](https://i.loli.net/2020/02/27/Ix349rPDRAobVcf.png)



Since the first stump we made using `Weight` incorrectly classified one sample (Patient Weight = 167). We will emphasize the need for the next stump to correctly classify it by `increasing` its sample weight and `decreasing` other sample weights.



![image-20191213165758532.png](https://i.loli.net/2020/02/27/S5iF1w7hdV9BGr6.png)



For correctly classified samples



![image-20191213170317594.png](https://i.loli.net/2020/02/27/KucXfkljpdGRoW3.png)



Update and normalize the sample weights 

![image-20191213170455334.png](https://i.loli.net/2020/02/27/nxPgiED5U3l4Trf.png)



For the dataset which next stump will use, randomly pick a number b/w 0,1



![image-20191213170744938.png](https://i.loli.net/2020/02/27/3f4KsU6z2ldjeuF.png)



![image-20191213170932211.png](https://i.loli.net/2020/02/27/DFEsajAfRVuyBeY.png)



continue to pick random numbers until the new collection is the same size as the original.



![image-20191213171057479.png](https://i.loli.net/2020/02/27/AxqWH7fUZFjcJwY.png)





Now we go back to the beginning and try to find the stump (root using different features) that does the best job classifying the new collection of samples. 

Now imagine stumps on the left classified patient as `Has Heart Disease` and `Does Not Have Heart Disease` on the right.



![image-20191213171155657.png](https://i.loli.net/2020/02/27/mHZ4CtMYen3LIaA.png)