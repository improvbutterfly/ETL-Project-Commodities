#!/usr/bin/env python
# coding: utf-8



# In[17]:


crude_oil = pd.read_csv('../data/energy/crude_oil.csv')
crude_oil = crude_oil.rename(columns={"Date":"date", "Value":"usd_per_barrel"})
crude_oil = crude_oil.set_index("date")


# In[19]:


crude_oil.to_sql('crude_oil', engine, if_exists='append')


# In[23]:


natural_gas = pd.read_csv('../data/energy/natural_gas.csv')
natural_gas = natural_gas.rename(columns={"Date":"date", "Settle":"usd_per_million_btu"})
natural_gas = natural_gas.set_index('date')


# In[24]:


natural_gas.to_sql('natural_gas', engine, if_exists='append')







