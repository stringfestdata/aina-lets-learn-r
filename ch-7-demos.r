library(reshape)
data(package = 'reshape')

# Now what?
tips

# Get first few rows
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




