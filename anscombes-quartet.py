#!/usr/bin/env python
# coding: utf-8

# In[2]:


import seaborn as sns
import pandas as pd
anscombe = sns.load_dataset('anscombe')
anscombe.head()


# In[3]:


anscombe.groupby('dataset').describe()


# In[7]:


sns.scatterplot(data=anscombe, x='x', y='y', hue='dataset')

