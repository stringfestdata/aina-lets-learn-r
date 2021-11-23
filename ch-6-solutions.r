#!/usr/bin/env python
# coding: utf-8

# In[ ]:


# xlutils is available from Anaconda
#!conda install xlutils


# In[ ]:


# pyxlsb is not
# !pip install pyxlsb


# 1. The Standard Library includes a module `random` containing a function called `random()` which works very similarly to Excel's `RAND()` (no arguments needed). Assign a run of this function to an object and print it.
# 2. Learn about the `xlutils` package using the `?` operator.

# In[ ]:


import random
my_random = random.random()
my_random


# In[ ]:


# Needs to be imported
import xlutils
get_ipython().run_line_magic('pinfo', 'xlutils')


# # Markdown time!
# 
# ## You'll get used to it
# 
# To learn more about Markdown, check out [*The Markdown Guide*](https://www.markdownguide.org).
# 
# But first, read my book :) 
# 
# ![Book cover](images/book-cover.jpg)

# In[ ]:




