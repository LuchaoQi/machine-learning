[toc]





### K means from scratch



```python
def cal_dist(p1,p2):
    return sum((a-b)**2 for a,b in zip(p1,p2))**0.5

import collections
import random

def kmeans(dataset,k,threshold,n_iter):
    dataset = [tuple(i) for i in dataset]
    n = 0
    prev_centroids = collections.defaultdict(list) # datapoints aligned to each centroid
    for i in random.sample(dataset,k=k): # initial case
        prev_centroids[i] = []
        
    while n < n_iter:
        n += 1
        for data in dataset: # find nearest centroid
            closest_centroid = min(prev_centroids,key=lambda x:cal_dist(data,x))
            prev_centroids[closest_centroid].append(data)

        cur_centroids = []
        for centroid in prev_centroids: # calculate new centroid
            mean_x = sum(i[0] for i in prev_centroids[centroid]) / len(prev_centroids[centroid])
            mean_y = sum(i[1] for i in prev_centroids[centroid]) / len(prev_centroids[centroid])
            cur_centroids.append((mean_x,mean_y))
            
        # if new centroids merged with old centroids
        if all(cal_dist(p,q) <= threshold for p,q in zip(prev_centroids.keys(),cur_centroids)):
            print('Reached threshold with '+str(n)+' iterations')
            print('Clustered results: ')
            for k,v in prev_centroids.items():
                print(k,':',v)
            return cur_centroids
            
        prev_centroids.clear() # update prev_centroids with cur_centroids
        for centroid in cur_centroids:
            prev_centroids[centroid] = []
            
    return cur_centroids
# A = [(random.randint(0,10),random.randint(0,10)) for _ in range(1000)]
A = [[1,1],[2,1],[4,3],[5,4],[100,10],[20,20]]
print(kmeans(A,2,1e-10,50))
```



