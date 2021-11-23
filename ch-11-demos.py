#!/usr/bin/env python
# coding: utf-8

# In[2]:


# Borrowing a dataset from `seaborn`
import seaborn as sns
tips = sns.load_dataset('tips')


# In[3]:


# Now what?
tips


# In[4]:


tips.head()


# In[6]:


tips.info()


# In[7]:


# We'll do more descriptive statistics later...
# Why aren't all columns showing up here? 
tips.describe()


# In[9]:


# Export to Excel
tips.to_excel('output/tips.xlsx')


# ### Back to slides...

# In[ ]:




