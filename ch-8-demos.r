#!/usr/bin/env python
# coding: utf-8

# In[1]:


import seaborn as sns
tips = sns.load_dataset('tips')
tips.head()


# ## Working with columns
# 

# In[2]:


# Select the total_bill column

tips['total_bill']


# In[3]:


# This is a Series
type(tips['total_bill'])


# In[4]:


# This is a DataFrame
type(tips[['total_bill']])


# In[5]:


# Dropping

tips.drop('smoker', axis='columns')
tips.columns


# In[6]:


# Dropping _in-place_
tips.drop('smoker', axis='columns', inplace=True)
tips.columns


# In[7]:


# Calculate column
tips['new_column'] = tips['total_bill'] * .2
tips.head()


# In[10]:


tips.rename(columns = {'new_column': '5pct_of_bill'}, inplace=True)
tips.head()

# Back to slides...


# ## Working with rows
# 

# In[12]:


# Sort by total bill
tips.sort_values(by=['total_bill'])


# In[14]:


# Total bill, descending
tips.sort_values(by=['total_bill'], ascending=False)


# In[15]:


# Time asecnding, total bill descending
tips.sort_values(by=['time', 'total_bill'], ascending=[True, False])


# In[17]:


tips_over_5 = tips['tip'] > 5
tips_over_5


# In[19]:


tips[tips_over_5]


# In[21]:


dinner_tips_over_5 = (tips['tip'] > 5) & (tips['time'] == 'Dinner')
tips[dinner_tips_over_5]

# Back to slides


# ## Merging

# In[22]:


import pandas as pd
people = pd.read_csv('data/people.csv')
people.shape


# In[23]:


hof = pd.read_csv('data/hof.csv')
hof.shape


# In[24]:


# Inner join
people_merge = people.merge(hof)
people_merge.shape


# In[25]:


# Left outer join
people_merge = people.merge(hof, how='left')
people_merge.shape


# ## Dataviz

# In[30]:


import seaborn as sns

# Re load dataset
tips = sns.load_dataset('tips')
tips.head()


# ### Univariate

# In[43]:


sns.countplot(x='smoker', data=tips)


# In[44]:


# Flip it
sns.countplot(y='smoker', data=tips)


# In[32]:


sns.displot(x='total_bill', data=tips)


# In[33]:


sns.boxplot(x='total_bill', data=tips)


# In[34]:


sns.boxplot(y='total_bill', data=tips)


# ### Bivariate
# 

# In[35]:


sns.boxplot(x='time', y='total_bill', data=tips)


# In[36]:


sns.displot(x='time', col='total_bill', data=tips)


# In[37]:


sns.scatterplot(x='total_bill', y='tip', data=tips)


# In[38]:


sns.scatterplot(x='total_bill', y='tip', data=tips, hue='time')


# In[39]:


# pairplot
sns.pairplot(tips)


# ### Adding labels

# In[40]:


import matplotlib.pyplot as plt


# In[41]:


sns.scatterplot(x='total_bill', y='tip', data=tips, hue='time')
plt.xlabel('Total bill')
plt.ylabel('Tip')
plt.title('Tip vs total bill by time of day')


# Back to slides...

# In[ ]:




