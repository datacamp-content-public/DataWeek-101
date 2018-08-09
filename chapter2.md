---
title: 'Chapter 2'
description: ""
---

## Getting started with Pandas

```yaml
type: NormalExercise 
xp: 100 
key: e04c4a2989   
```


Let's start working with dataframes. 
We import the `Pandas` library 
```
import pandas as pd
```
The `as pd` part of the statements defines a shorthand (an alias) for `pandas`, so that we can write `pd` instead of `pandas` in our script.

The easiest way to create a new dataframe is using a dictionary, the keys will become our column names and the value (as lists) will be the column values for each row:
```
mydict = { 'column_1' : [10, 20, 30, 40], 'column_2': ['a', 'b', 'c', 'd'] }
df = pd.DataFrame(mydict)
```

We can access single columns by name (like a dictionary):
```
print( df['nr_bedrooms'] )
```
We can access single rows using the `.iloc` method:
```
print( df.iloc[2] )
```


`@instructions`


`@hint`


`@pre_exercise_code`
```{python}
import pandas as pd

pd.set_option('display.width', pd.util.terminal.get_terminal_size()[0])
```
`@sample_code`
```{python}
import pandas as pd

mydict = { 'nr_of_bedrooms' : [1, 2, 1, 3, 2, 4], 'house_price': [450000, 630000, 380000, 720000, 650000, 890000] }
df = pd.DataFrame(mydict)
print(df)

print( df['nr_of_bedrooms'] )
print( df.iloc[2] )
#df = pd.read_csv("https://raw.githubusercontent.com/RuiChang123/Regression_for_house_price_estimation/master/final_data.csv")
#from IPython.display import display, HTML
#print(df.head())
```
`@solution`
```{python}
import pandas as pd

mydict = { 'nr_of_bedrooms' : [1, 2, 1, 3, 2, 4], 'house_price': [450000, 630000, 380000, 720000, 650000, 890000] }
df = pd.DataFrame(mydict)
print(df)

print( df['nr_of_bedrooms'] )
print( df.iloc[2] )
#df = pd.read_csv("https://raw.githubusercontent.com/RuiChang123/Regression_for_house_price_estimation/master/final_data.csv")
#from IPython.display import display, HTML
#print(df.head())
```
`@sct`
```{python}
1
```