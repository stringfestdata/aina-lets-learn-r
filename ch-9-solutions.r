#!/usr/bin/env python
# coding: utf-8

# Dataset: `mpg` from `seaborn`
# 
# Is there a difference between the average mileage of American and European cars? 

# In[1]:


import pandas as pd
import seaborn as sns

mpg = sns.load_dataset('mpg')
mpg.head()


# In[2]:


mpg['origin'].unique()


# In[3]:


usa = mpg.query('origin == "usa"')
usa.shape


# In[4]:


europe = mpg.query('origin =="europe"')
europe.shape


# In[5]:


# Make sure to do descriptive statistics first!
sns.barplot(x='origin', y='mpg', data=mpg)


# In[6]:


mpg.groupby('origin').describe()['mpg']


# In[7]:


from scipy import stats
stats.ttest_ind(europe['mpg'], usa['mpg'])


# In[8]:


# What about weight and mpg?
sns.scatterplot(x='weight', y='mpg', data=mpg)


# In[9]:


tips = sns.load_dataset('tips')
tips.head()


# In[10]:


# total_bill comes first in time...
sns.scatterplot(x='total_bill', y='tip', data=tips)

# Looks fairly linear


# In[11]:


x = tips['total_bill']
y = tips['tip']

stats.linregress(x, y)


# In[14]:


sns.regplot(x, y)


# In[15]:


from sklearn import linear_model
from sklearn import model_selection
from sklearn import metrics

X_train, X_test, y_train, y_test =  model_selection.train_test_split(tips[['total_bill']], 
                                                                     tips[['tip']], random_state=1234)


# In[16]:


y_train.shape


# In[17]:


y_test.shape


# In[18]:


# Create linear regression object
regr = linear_model.LinearRegression()

# Train the model using the training sets
regr.fit(X_train, y_train)

# Make predictions using the testing set
y_pred = regr.predict(X_test)


# In[19]:


# What % of variability in y is explained by x?
metrics.r2_score(y_test, y_pred)


# In[ ]:




