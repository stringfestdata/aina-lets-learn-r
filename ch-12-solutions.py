#!/usr/bin/env python
# coding: utf-8

# ## Data visualization
# 
# - Drop the `name` column
# - Create a `weight_kg` column (`weight` * .454)
# - Sort by `mpg`, descending
# - Keep only the records with `cylinder` of more than 4
# - Get the average `mpg` for each `origin`

# In[1]:


import seaborn as sns
import pandas as pd

mpg = sns.load_dataset('mpg')
mpg.head()


# In[ ]:





# Pick a `seaborn` dataset or two... and make some visualizations!
# 
# Include at least two univariate and two bivariate plots. 
# Label your axes and titles on at least one of them. 
# 
# Get a list of available datasets:
# 
# ```
# import seaborn as sns
# sns.get_dataset_names()
# ```
# 
# #### To be completed during class...

# In[ ]:




