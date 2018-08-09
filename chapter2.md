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
Run the code on the right to see the dataframe printed. After that, try to print the third row and the column `nr_of_bedrooms`

`@hint`
You need to use `iloc` and the column name

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

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~
```
`@solution`
```{python}
import pandas as pd

mydict = { 'nr_of_bedrooms' : [1, 2, 1, 3, 2, 4], 'house_price': [450000, 630000, 380000, 720000, 650000, 890000] }
df = pd.DataFrame(mydict)
print(df)

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~

print( df.iloc[2] )
print( df['nr_of_bedrooms'] )
```
`@sct`
```{python}
Ex().has_equal_output()
```
---

## Attributes and Methods

```yaml
type: NormalExercise 
xp: 100 
key: c0823c10bd   
```


When a dataframe is created, a few variables are automatically created. 

All data in a Python program is represented by **objects**. Even the core types we just saw (integer, strings, etc...) are special kinds of objects.
We can think of an object as a container that can store specific _variables_ and _functions_. 
_Variables_ associated with a specific object are called **attributes** and can be accessed with **dot-notation**.
For example, to list the columns in the dataframe, you can use the `columns` attribute of the dataframe. 
```
list_of_columns = df.columns
```
_Functions_ associated with a specific object are called **methods** and can be accessed with dot-notation as well. 
An example is the dataframe method `head()`, which prints the first few rows of the dataframe:
```
print( df.head() )    # prints the first few (5 by default) rows of df
```
Also strings and integer/floats have methods
```
s = "hello"
print( s.upper() )      #prints HELLO
print( s.title() )      #prints Hello
```


`@instructions`


`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`
```{python}
import pandas as pd
df = pd.DataFrame({ 'nr_of_bedrooms' : [1, 2, 1, 3, 2, 4], 'house_price': [450000, 630000, 380000, 720000, 650000, 890000] })

print( df.columns )
print( df.head() )
```
`@solution`

```{python}

```


`@sct`

```{python}

```


---

## Load

```yaml
type: NormalExercise 
xp: 100 
key: bb5f8f9d23   
```


In most cases, you will not create your own dataframe, but you will load it from file.
Pandas as multiple functions to do that, the most popular one is `read_csv()`.
```
df = pd.read_csv("some_file.csv")
```

To list the columns in the dataframe, you can use the `columns` **attribute**.
```
list_of_columns = df.columns
```
To print the first few rows of the dataframe, you can use the `head()` **method**:
```
print( df.head() )    # prints the first few (5 by default) rows of df
```


`@instructions`
Run the code on the right to see the dataframe printed. After that, try to
- print the list of all columns
- print the third row 
- print the column `bedrooms`
- print the first few rows

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`
```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")

print(df)

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~

```
`@solution`
```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")

print(df)

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~

print( df.columns )
print( df.iloc[2] )
print( df['bedrooms'] )
print( df.head() )
```
`@sct`
```{python}
Ex().
```