#!/usr/bin/env python
# coding: utf-8

# In[ ]:


abs(-10)


# In[ ]:


sqrt(25)


# In[ ]:


# Standard library...
import math

sqrt(25)


# In[ ]:


math.sqrt(25)


# In[ ]:


# Get documentation
help(math.sqrt)


# In[ ]:


# Re-use this data... object

my_first_var = math.sqrt(25)

# Squared
my_first_var ** 2

# Back to slides


# 
# #### How does Python handle
# 
# - Counting?
# - Whitespace?
# - Multiplying lists?
# 

# In[2]:


get_ipython().run_cell_magic('html', '', '<iframe width="100%" height="346" frameborder="0" scrolling="no" src="https://onedrive.live.com/embed?resid=57D2AB2A84D54C81%211421&authkey=%21ADrWUgbSHr9YZO0&em=2&AllowTyping=True&wdDownloadButton=True&wdInConfigurator=True"></iframe>')


# A Python list is similar to an Excel range...

# In[2]:


# Assign to list 
leaders = ['Barry', 'Hank', 'Babe', 'Alex', 'Albert']


# In[3]:


# Print list
leaders


# In[4]:


# Get third item in list? 🤷‍♂️
leaders[3]


# ##### Python starts counting from zero...
# 
# ![Datasets](images/datasets.png)

# In[5]:


# Get third item in list. 😎
leaders[2]


# In[6]:


languages = ['R', 'Python', 'VBA']

for l in languages:
print(l.lower())


# In[ ]:


# Indentation matters

languages = ['R', 'Python', 'VBA']

for l in languages:
    print(l.lower())


# ## Your turn... 
# 
# What will the below code return?

# In[ ]:


my_list = ['Living', 'the', 'Python', 'dream']
my_list[len(my_list)-2]


# In[ ]:


# This is more common...
my_list[-2]


# ## List aren't made for math...

# In[7]:


my_list = [1, 2, 1, 2]
my_list * 2


# ### Use `numpy` instead...

# In[9]:


import numpy
my_array = numpy.array(my_list)
my_array


# In[10]:


# Looks similar, but not the same...
type(my_array)


# In[13]:


# Also does math...
my_array * 2


# In[ ]:





# In[ ]:





# In[ ]:




