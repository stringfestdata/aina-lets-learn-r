#!/usr/bin/env python
# coding: utf-8

# In[2]:


#!pip install vega_datasets

import pandas as pd
from vega_datasets import data
movies = data.movies()
movies.head()

movies.describe()

movies.head().to_excel('output/movies-head.xlsx')


# In[ ]:




