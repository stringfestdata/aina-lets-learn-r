#!/usr/bin/env python
# coding: utf-8

# In[1]:


import seaborn as sns
import pandas as pd
anscombe = sns.load_dataset('anscombe')
anscombe.head()


# In[2]:


anscombe.groupby('dataset').describe()


# In[3]:


sns.scatterplot(data=anscombe, x='x', y='y', hue='dataset')


# In[4]:


# Back to slides...


# In[5]:


import seaborn as sns
tips = sns.load_dataset('tips')
tips.head()


# In[6]:


# One-way frequency
pd.crosstab(index=tips['smoker'], columns='count')


# In[7]:


# Two-way frequency
pd.crosstab(index=tips['smoker'], columns=tips['time'])


# In[8]:


# Two-way frequency, add total
pd.crosstab(index=tips['smoker'], columns=tips['time'], margins=True)


# In[9]:


# Descriptive stats
tips.describe()


# In[10]:


# Include all columns...
tips.describe(include='all')


# In[11]:


# All pairwise relationships
sns.pairplot(tips, vars=tips.columns)


# In[12]:


# One more plot type.... 
sns.barplot(data=tips, x='time', y='tip')

# Back to slides


# In[13]:


# Baseline -- what is our current data?
tips.groupby('time').describe()['tip']


# In[14]:


# Split into lunch and dinner datasets
lunch = tips.query('time == "Lunch"')
lunch.shape


# In[15]:


dinner = tips.query('time == "Dinner"')
dinner.shape


# In[16]:


from scipy import stats
stats.ttest_ind(lunch['tip'], dinner['tip'])

# Back to slides


# In[17]:


tips.corr()


# In[18]:


sns.pairplot(data=tips)


# In[19]:


sns.heatmap(tips.corr())
# Back to slides...


# In[20]:


mpg = sns.load_dataset('mpg')
mpg.head()


# In[27]:


# linregress(x, y)

x = mpg['weight']
y = mpg['mpg']

stats.linregress(x, y)


# In[22]:


# Visualize the relationship

sns.regplot(x='weight', y='mpg', data=mpg)


# In[32]:


from sklearn import linear_model
from sklearn import model_selection
from sklearn import metrics

X_train, X_test, y_train, y_test =  model_selection.train_test_split(mpg[['weight']], mpg[['mpg']], random_state=1234)


# In[39]:


y_train.shape


# In[40]:


y_test.shape


# In[33]:


# Create linear regression object
regr = linear_model.LinearRegression()

# Train the model using the training sets
regr.fit(X_train, y_train)

# Make predictions using the testing set
y_pred = regr.predict(X_test)


# In[34]:


# What % of variability in y is explained by x?
metrics.r2_score(y_test, y_pred)


# In[ ]:




