#!/usr/bin/env python
# coding: utf-8

# ## 0. Web search it!

# ## 1. Get help documentation with `?`

# In[1]:


import pandas as pd

get_ipython().run_line_magic('pinfo', 'pd.read_excel')


# In[2]:


get_ipython().run_line_magic('pinfo', 'pd')


# ## 2. Check package documentation

# ## 3. Visualize your code with PythonTutor

# In[3]:


from IPython.display import IFrame

IFrame(src="http://pythontutor.com/visualize.html#mode=edit", width='100%', height=500)


# ## 4. Compose a minimally reproducible example... 

# In[4]:


import seaborn as sns

sns.get_dataset_names()


# In[6]:


mpg = sns.load_dataset('mpg').head()

mpg


# ## 5. ... *then* hit the forums
# 
# <img src='https://raw.githubusercontent.com/stringfestdata/images-for-web-embeds/main/stack-overflow-bootcamp-meme.jpeg' width=50%>

# In[ ]:




