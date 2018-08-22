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


`@possible_answers`


`@feedback`


---

## Attributes and Methods [OPTIONAL]

```yaml
type: NormalExercise 
xp: 100 
key: c0823c10bd   
```


All data in a Python program is represented by **objects**. Even the core types we just saw (integer, strings, etc...) are special kinds of objects.
We can think of an object as a container that can store specific _variables_ and _functions_. 
_Variables_ associated with a specific object are called **attributes** and can be accessed with **dot-notation**.
The dataframe `columns` attribute we just saw is an example of this: 
```
list_of_columns = df.columns
```
_Functions_ associated with a specific object are called **methods** and can be accessed with dot-notation as well. 
The dataframe method `head()` we just saw, which prints the first few rows of the dataframe, is an example of this:
```
print( df.head() )    # prints the first few (5 by default) rows of df
```
Also strings, integer and floats have methods:
```
s = "hello"
print( s.upper() )      #prints HELLO
print( s.title() )      #prints Hello
a = 56.1
print( a.is_integer() )   # prints False
b = 50.0
print( b.is_integer() )   # prints True
```


`@instructions`
Can you find a string method in the Python reference docs to split a sentence into words (split on whitespace)?
[https://docs.python.org/3/library/stdtypes.html#string-methods](https://docs.python.org/3/library/stdtypes.html#string-methods)

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
s = "hello"
print( s.upper() )      #prints HELLO
print( s.title() )      #prints Hello
a = 56.1
print( a.is_integer() )   # prints False
b = 50.0
print( b.is_integer() )   # prints True

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Split the sentence in S into words (on whitespace) by replacing
# <string-method> with the appropriate method

S = "This is a sentence"
print( S.<string-method>() )
```


`@solution`

```{python}
s = "hello"
print( s.upper() )      #prints HELLO
print( s.title() )      #prints Hello
a = 56.1
print( a.is_integer() )   # prints False
b = 50.0
print( b.is_integer() )   # prints True

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Split the sentence in S into words (on whitespace) by replacing
# <string-method> with the appropriate method

S = "This is a sentence"
print( S.split() )
```


`@sct`

```{python}
Ex.has_equal_output()
```


`@possible_answers`


`@feedback`


---

## Load from CSV

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

`@hint`
You need to use `df.columns`, `df.iloc`, `df.head()` and `df[<column>]`

`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")

print(df.head())

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~
# print the list of all columns
# print the third row 
# print the column `bedrooms`
```


`@solution`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")

print(df.head())

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~
# print the list of all columns
# print the third row 
# print the column `bedrooms`

print( df.columns )
print( df.iloc[2] )
print( df['bedrooms'] )
```


`@sct`

```{python}
Ex().has_equal_output()
```


`@possible_answers`


`@feedback`


---

## Simple operations

```yaml
type: NormalExercise 
xp: 100 
key: 523b834f90   
```


Dataframes come with a series of methods that can act row-wise or column-wise. Most methods act row-wise by default (1 result for each column).
```
df.sum()  
df.cumsum()    # cumulative sum
df.mean()    
df.median()    
```
Some methods accept the argument `axis` to explicitly request to apply the function row-wise or column-wise.
```
df.sum(axis=0)    # sum over rows (returns 1 result for each column)
df.sum(axis=1)    # sum over columns (return 1 results for each row)
```
To apply the function to one column:
```
df['bathrooms'].sum() 
```


`@instructions`
What is the average number of bedrooms? What is the median (last sold) price?

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")
 
#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
mean_nr_bedrooms = ...
median_price = ...

print( 'The average number of bedrooms is {:5.2f}'.format(mean_nr_bedrooms) )
print( 'The median house price is {:8.0f}'.format(median_price) )
```


`@solution`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")
 
#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
mean_nr_bedrooms = df['bedrooms'].mean()
median_price = df['lastsoldprice'].median()

print( 'The average number of bedrooms is {:5.2f}'.format(mean_nr_bedrooms) )
print( 'The median house price is {:8.0f}'.format(median_price) )
```


`@sct`

```{python}
Ex().check_object('mean_nr_bedrooms').has_equal_value()
Ex().check_object('median_price').has_equal_value()
```


`@possible_answers`


`@feedback`


---

## GroupBy /1

```yaml
type: NormalExercise 
xp: 100 
key: 682c9ba658   
```


Groupby essentially splits the data into different groups depending on a variable of your choice.  
```
df.groupby('zipcode')
```
Functions like `max()`, `min()`, `mean()`, `first()`, `last()` or `count()` can be quickly applied to the GroupBy object to obtain summary statistics for each group.
For example, to count the number of rows in each group:
```
grouped = df.groupby('zipcode')
grouped.count()
```
the aggregation will return **a new dataframe** looking something like this
```
        bathrooms  bedrooms  finishedsqft  neighborhood  totalrooms  \
zipcode                                                                
94102.0        318       318           318           318         318   
94103.0        360       360           360           360         360   
94104.0          1         1             1             1           1   
94105.0        340       340           340           340         340 
```
Data is grouped by zipcode, and the count of rows for each columns are reported. We have 318 rows for zipcode 94102 in column bedrooms.
Columns can have missing values, in that case the count can be different for each column.
To perform the same operation on one column only:
```
df.groupby('zipcode')['bedrooms'].count()
```
will return 
```
zipcode
94102.0    318
94103.0    360
94104.0      1
94105.0    340
```


`@instructions`
Find the average house price (last sold) by neighborhood. What's the highest average price among all neighborhoods?

Extra points: what is the most expensive neighborhood?

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")
 
#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
average_price_by_nh = ...
highest_average_price = ...

print(average_price_by_nh)
print("The neighborhood with the highest average price is {}".format(highest_average_price))
```


`@solution`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")
 
#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
average_price_by_nh = df.groupby("neighborhood")['lastsoldprice'].mean()
highest_average_price = average_price_by_nh.max()

print(average_price_by_nh)
print("The highest average price is {}".format(highest_average_price))
```


`@sct`

```{python}
Ex().check_object("highest_average_price").has_equal_value()
```


`@possible_answers`


`@feedback`


---

## Groupby /2

```yaml
type: NormalExercise 
xp: 100 
key: 5bcb93fc18   
```


You perform multiple aggregations at the same time using the method `aggregate()` (or just `agg()` for short). 

```
df.groupby('zipcode').agg(['sum', 'mean'])
```
will return
```

```
or for a single column
```
df.groupby('zipcode')['bedrooms'].agg(['sum', 'mean'])
```

You can also specify different aggregations for different columns (using the column name):
```
df.groupby('zipcode').agg({'bedrooms': 'max', 'bathrooms': 'min'})
```


This method is also useful when you want to apply your own aggregation function:
```
def list_options(group):
    return set(group.tolist())

df.groupby('zipcode')['bedrooms'].agg(list_options)
```


`@instructions`
Return the number of unique zipcodes for each neighborhood. Which is the neighborhood with the most zipcodes?

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
import pandas as pd
df = pd.read_csv("https://assets.datacamp.com/production/repositories/3325/datasets/bc5e33e37667626e6720dfc83f635cce7bdae066/house_data_small.csv")
 
def list_options(group):
  return set(group.tolist())

print( df.groupby('zipcode')['bedrooms'].agg(list_options).head() )

#~~~~~~~~~~~~~~~~~~ Add your code below ~~~~~~~~~~~~~~~~~~




```


`@solution`

```{python}

```


`@sct`

```{python}

```


`@possible_answers`


`@feedback`

