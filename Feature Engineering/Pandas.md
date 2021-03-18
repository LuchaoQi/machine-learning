[toc]



### Posts





https://mp.weixin.qq.com/s/syRW1dLQLU1XlUP-kcj6zg

> **5、tqdm** 
>
> 处理大数据集时，数据处理会花费很多时间。当然，东哥也分享了很多加速运行pandas的方法。
>
> [安利一个Python大数据分析神器！](http://mp.weixin.qq.com/s?__biz=MzUzODYwMDAzNA==&mid=2247501025&idx=1&sn=a0d919a15f4e10ec3bd8f906f2059dec&chksm=fad7b3eccda03afa581d582676ec170db1b6489453525673cea95ec5b893a78566fb9be24c49&scene=21#wechat_redirect)
>
> [卧槽！一个比 pandas 快百倍的大数据分析神器！](http://mp.weixin.qq.com/s?__biz=MzUzODYwMDAzNA==&mid=2247500298&idx=2&sn=36ce806ce12efcb2ff37d9c58c268918&chksm=fad7b507cda03c1158171cfe8165e476349b0e5fdf92bfdbba4102e73e8ce0d29d1391b19fe0&scene=21#wechat_redirect)
>
> [12个Pandas & Numpy函数：数据分析提速50%不是问题！](http://mp.weixin.qq.com/s?__biz=MzUzODYwMDAzNA==&mid=2247496187&idx=2&sn=887581cf02caeadb266a2bee97e3a32c&chksm=fad786f6cda00fe0abbe2fd493d6ad0045b496d34e0a3d62f69221e8c4dc6d71b83b2ebcc468&scene=21#wechat_redirect)
>
> [嫌pandas慢又不想改代码怎么办？来试试Modin](http://mp.weixin.qq.com/s?__biz=MzUzODYwMDAzNA==&mid=2247486239&idx=1&sn=2a4a9ec9e224c15987c4576f500a4a07&chksm=fad47c12cda3f504c0e0f918687aa33368f691efaf8c3052d170952e50578a10d35d65a172a6&scene=21#wechat_redirect)
>
> 但即使加速了还是要等，Jupyter Notebook运行时有个缺点，就是不知道运行的状态，需要多久。像我们在电脑上复制粘贴的时候通常会显示需要多久和当前的速度，这样我们提前安排做其它事情还是继续等待。
>
> Python中有个库是tqdm，它可以用来跟踪代码是否真正在运行以及需要花费多长时间，使用方法很简单。
>
> ```
> from tqdm import notebook
> notebook.tqdm().pandas()
> ```
>
> import之后，pandas的dataframe就有了新的方法。
>
> - .progress_apply, .progress_applymap
> - .progress_map
>
> 这些方法与apply、applymap和map的使用相同，不同之处是它们将显示进度条。
>
> ![img](https://i.loli.net/2020/10/25/Pwna5SXM3TovWNY.gif)



[Tidyverse pipes in Pandas](https://stmorse.github.io/journal/tidyverse-style-pandas.html)

[系列: pandas100个骚操作](https://mp.weixin.qq.com/mp/appmsgalbum?__biz=MzUzODYwMDAzNA==&action=getalbum&album_id=1699019347278561282&scene=21#wechat_redirect)

[一行代码让 pandas 的 apply 速度飙到极致！](https://mp.weixin.qq.com/s/vVuQIjG6usKXMB7Db8GK6Q)

[高效的 10 个Pandas函数，你都用过吗？](https://mp.weixin.qq.com/s?__biz=MzUzODYwMDAzNA==&mid=2247497424&idx=2&sn=74af656fdf9cd92825b4005a03ca937f&chksm=fad781ddcda008cb1f34e9d7166d823687a07baf1d10b86e9869082840348fea25b9a8962c3d&mpshare=1&scene=1&srcid=0820K2WR4aLPBzkdjc1z2x55&sharer_sharetime=1597907390294&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=b9392b7c27e91e19d40916ed6435efb6fd4d871a4b3ae90c5314a43eba30d65d75dff321986e9081de7e405d6bf49352e6008f3705389700dfc25c55690b8ef4ce38e7f2df57501fbd80a787fcbc8167543356b3613e285f25b07b862288facb69d34964afb3a008e8c2e80b9d2cdbc4b7acbcab0985a3c053206eb755fd468f&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62080085&lang=en&exportkey=A0rTTvHkZVYcZ9K%2F9qAyzvw%3D&pass_ticket=dl5Iy2qsBZ9gzq%2FRfs1Q4CEN%2Fhyil2Dm7RHxB%2B8%2FfwwGzOwxi2eJVPN0mhlXaHf0)

[Python处理分析128张Excel表格](https://mp.weixin.qq.com/s?__biz=MzUzODYwMDAzNA==&mid=2247488730&idx=3&sn=44bb4de7e28d5d4fabe9b75e6d9384a0&chksm=fad463d7cda3eac16083eaf4dd699da89971efddfd20ef9a97bb00d7d84ff2cfafbc34f7b989&mpshare=1&scene=1&srcid=&sharer_sharetime=1581795571700&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=b089ab4307cc93f99412d5f38d5f5574903cfbc36f90ea8ae8d914df33f61ecd95168ad133225b37ab525b9fd1585d369bae1fde62663b612014c90ebc000bfb9b9d71f71c0b47f0bba3e4265599fcf6&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62070158&lang=en&exportkey=A4GyhtWJTN4MI%2BFqFnDn3wU%3D&pass_ticket=HUmG34FrJdSkkMkGQ8Ek%2BwoKbRgxJGF8CrBlo8fNM6xFwL7s7GVAsC8GW%2FkOSgg6)

[还在抱怨pandas运行速度慢？这几个方法会颠覆你的看法](https://mp.weixin.qq.com/s?__biz=MzU4OTQ1MTA4OQ==&mid=2247484170&idx=1&sn=8f662550a6e01ab191de1c57afb4f2e5&chksm=fdcc1934cabb9022b42ddf51c2c11f8c5069c424ac7f1120550c66dae34e395991b0b3ada92e&mpshare=1&scene=1&srcid=&sharer_sharetime=1575522959679&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=aa397d0f1c3682ba85dc210d24355b5edd123bd41da566c32115a60bdca077a4b648abf84f1b9002187ad3d77d6baec5f099e26f7a440a4e6fc85831696909e1baf3274c4bed4b32c297082c805bffff&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62070158&lang=en&exportkey=AxRu4fmcVlvQRThRqao5gkE%3D&pass_ticket=ee2Re0y5GRDC7Z5JO2IRPQMYtoeI2sD8LkuPcXANvvpCdl6NlB9x9gylFsx2yZyu)

[惊了！大牛换了个思路，就让 Pandas 快了 1000x！](https://mp.weixin.qq.com/s?__biz=Mzg3MTAyMDMxOQ==&mid=2247484088&idx=1&sn=bf127b42706b72ec9a4f34a9ef2df912&chksm=ce85a0c8f9f229de91b2ec02ae5ac23c6699ee66ce29e89ba9ced17fb8e3e935d0f585e6db07&mpshare=1&scene=1&srcid=012560Rv2ZXMKbhhzpWQJbJq&sharer_sharetime=1579909492329&sharer_shareid=54d7b6bf73b347d381a7bff3f78b99d1&key=47c0c8dda35b3d6ee85d69b7b662ba41d469adc671ed850dd6da47b73a8902f53a6242181efcf6e0242731d540d53e1c845a273de39984b309a2b6943e95b746b08ffb9d6c0fa66e232995ddbc268323&ascene=1&uin=NzA3NTE3MTMz&devicetype=Windows+10&version=62070158&lang=en&exportkey=A8%2BE8Kqp6Tr85gxTfxo4zu0%3D&pass_ticket=lJveRg9gAUeTqWfqKJqPTsmBETtIP04Z4E2W2kBQR9BH39IEkb5%2FusO9Aiu9jq1T)





### Pandas 101

lots of code snippets have beed moved to gist



### SQL

```python
import sys
from pathlib import Path

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib
import numpy as np
from scipy.io import wavfile
import IPython

sys.path.append('/home/ec2-user/SageMaker/algorithms')
import lib



# Pull recordings from the data warehouse
sql_engine = lib.data.db.connect_mysql('analytics')
# query = 'SELECT * from recordings WHERE user_id = 69344'

query = """
SELECT p.description, p.identifier, r.patient_id, r.amazon_file_name, r.created_at
FROM recordings as r 
LEFT JOIN analyses as a
ON r.id = a.recording_id
LEFT JOIN users as u
ON r.user_id = u.id
LEFT JOIN patients as p
ON r.patient_id=p.id
WHERE user_id = 69344 AND NOT r.patient_id = 677722 AND NOT r.patient_id = 677723 AND NOT r.patient_id = 677724
"""

df = pd.read_sql_query(query, sql_engine)
df.head()
```







### ==[pandas cheat sheet](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)==

melt/pivot

https://bcaffo.github.io/MRIcloudTutorial/longVwide/longVwide.html

gather/spread



### ==[Data School's top 25 pandas tricks](https://nbviewer.jupyter.org/github/justmarkham/pandas-videos/blob/master/top_25_pandas_tricks.ipynb)==





