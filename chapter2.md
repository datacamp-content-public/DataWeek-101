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
The `as pd` part of the statements defines a shorthand (an alias) for `pandas`, so that we can write `pd` install of `pandas` in our script.

The easiest way to create a new dataframe is using a dictionary:
```
mydict = { 'column_1' : [10, 20, 30, 40], 'column_2': ['a', 'b', 'c', 'd'] }
df = pd.DataFrame(mydict)
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

mydict = { 'column_1' : [10, 20, 30, 40], 'column_2': ['a', 'b', 'c', 'd'] }
df = pd.DataFrame(mydict)

#df = pd.read_csv("https://raw.githubusercontent.com/RuiChang123/Regression_for_house_price_estimation/master/final_data.csv")
#from IPython.display import display, HTML
#print(df.head())
```
`@solution`
```{python}
import pandas as pd

mydict = { 'column_1' : [10, 20, 30, 40], 'column_2': ['a', 'b', 'c', 'd'] }
df = pd.DataFrame(mydict)

#df = pd.read_csv("https://raw.githubusercontent.com/RuiChang123/Regression_for_house_price_estimation/master/final_data.csv")
#print(df.head())
```
`@sct`
```{python}
1
```