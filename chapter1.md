---
  title: "Chapter 1"
  description: ""
---

## Variables

```yaml
type: NormalExercise 
xp: 100 
key: bda4ea2742   
```


The equal sign `=` is used to assign a value to a variable.
```
x = 5                        
```
Python supports by default simple operations:
```
a = 5 + 6
b = 7 / 2
```
We can print to the console using `print()`:
```
print(a)
```


`@instructions`
This is your first exercise. During an exercise, you need to complete the code on the right that appears after

`#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~`

When you're done, hit `Run Code` to execute your python script and see the output in the IPython Shell (below). If you think everything is correct, hit `Submit Answer` to check your submission and get feedback.
If you're stuck, you can click Get Hint, and ultimately Get Solution.

In this case: assign the value "Hello" to `x` and `5` to `y` and their product to `z`. What do you expect to be the output?  Finally, print `z` to screen.

`@hint`
`x = "some words"`
`y = `
`z = x *`

`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
x = 5                         # integers - this is a comment and starts with `#`
y = True                      # booleans
z = "Learning python"         # strings

a = 5 + 6
b = 7 / 2
c = a * 2
d = c - 1 

print(a)
print(b, c, d)

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Assign "Hello" to x, 5 to y and their product to z. 
# Print z to screen.

x = 
y = 
z =  * 
print()
```

`@solution`

```{python}
x = 5                         # integers - this is a comment and starts with `#`
y = True                      # booleans
z = "Learning python"         # strings

a = 5 + 6
b = 7 / 2
c = a + 1
d = c - 1 

print(a)
print(b, c, d)

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Assign "Hello" to x, 5 to y and their product to z. 
# Print z to screen.

x = "Hello"
y = 5
z = x * y
print(z)
```

`@sct`

```{python}
Ex().check_object('z').has_equal_value()
#Ex().check_printout()
```

---

## Collections

```yaml
type: NormalExercise 
xp: 100 
key: e3b431cc13   
```


Python knows a number of compound data types (collections), used to group together other values. The most versatile is the **List**, which can be written as a list of comma-separated values (items) between square brackets. There other collection data types are: **Dictionary**, Tuple and Set. Here are the main differences:

||Ordered|Changeable|Allows Duplicates|
|------------------------------------------------------|
|List|Yes|Yes|Yes|
|Dictionary|No|Yes|No|
|Tuple|Yes|No|Yes|
|Set|No|Yes|No|


`@instructions`
Change the first element of `a` to 7 and the 'name' key in `b` to Mary

`@hint`
a[ ... ] = ...
b["..."] = "..."

`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
# a list
a = [0, 1, 2, 3]

# changing an element
a[0] = 2
a[2] = 4

# a dictionary
b = {'name': 'John',
     'surname': 'Smith'}

b['name'] = 'Paul'

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Change the first element of a to 7
a

# Change the 'name' key in b to Mary
b
```

`@solution`

```{python}
# a list
a = [0, 1, 2, 3]

# changing an element
a[0] = 2
a[2] = 4

# a dictionary
b = {'name': 'John',
     'surname': 'Smith'}

b['name'] = 'Paul'

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Change the first element of a to 7
a[0] = 7

# Change the 'name' key in b to Mary
b['name'] = 'Mary'
```

`@sct`

```{python}
Ex().check_object('a').has_equal_value()
Ex().check_object('b').has_equal_value()
```

---

## if statements

```yaml
type: NormalExercise 
xp: 100 
key: f7a970dee6   
```


Python knows the usual control flow statements known from other languages. The most common is the **if** statement.
```
a = 1
b = 2

if (a > 0):
        b += 1
else:
        b += 10

```

Note that 
- a **colon** is needed at the end of the `if(condition)` line
- all the code to be executed when the condition is met is **indented** (this is mandatory in Python)
- the special operator `+=` in `b += 1` is a shorthand for `b = b + 1`


`@instructions`
Change the value of `a` so that the `else` clause is evaluated.

`@hint`
`a` needs to be less than (or equal to) 0

`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
a = 1
b = 2

if (a > 0):
        b += 1
else:
        b += 10

print(b)
```

`@solution`

```{python}
a = 0
b = 2

if (a > 0):
        b += 1
else:
        b += 10

print(b)
```

`@sct`

```{python}
Ex().check_object("b").has_equal_value()
```

---

## Loops

```yaml
type: NormalExercise 
xp: 100 
key: 935f6f9948   
```





---

## Functions

```yaml
type: NormalExercise 
xp: 100 
key: a4c9d49a0a   
```


Out of the box, Python offers a bunch of built-in functions to make your life easier, e.g. type conversion functions `str()` (converts to string), `int()` (to int), `bool()` (to boolean) and `float()` (to floating point).
```
x = str(5)
y = x * 6 #print 555555 (cause `x` is now a string)
```

Other functions are available in separate **Libraries** that can be imported. Some popular libraries ship with Python most of the time, even more libraries are included in distributions like **Anaconda**.

```
import Math
a = Math.log(b)
```

We will see other ways of importing functions. Some libraries don't come with Python by default and need to be installed. Libraries can be installed from a terminal with the command `pip install <library>` or, if using Anaconda, `conda install <library>`.

You can also write your own functions:
```
def myfunction(a,b):
    return a+b
```


`@instructions`
Complete the code on the right.
Write a function that takes three numbers, converts them to boolean and sums them. Call the function with 12, 30, 55 as input and assign the output to the variable `result` (e.g. result = myfunc(12,30,55)) 
Print the outcome. What do you notice?

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
def sum_two_numbers(a, b):
  return a+b

def sum_two_numbers_as_strings(a, b):
  return str(a)+str(b)

print( sum_two_numbers(7.1, 5.2) )    #prints 12.3
print( sum_two_numbers_as_strings(7.1, 5.2) )    #prints 7.15.2

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Write a function that takes three numbers, converts them to boolean and
# sums them. Call the function with 12, 30, 55 as input and assign the 
# output to the variable `result` (e.g. result = myfunc(12,30,55)) 
# Print the outcome. What do you notice?

def ...

result = ... (12, 30, 55)
print("result is ",result)
```

`@solution`

```{python}
def sum_two_numbers(a, b):
  return a+b

def sum_two_numbers_as_strings(a, b):
  return str(a)+str(b)

print( sum_two_numbers(7.1, 5.2) )    #prints 12.3
print( sum_two_numbers_as_strings(7.1, 5.2) )    #prints 7.15.2

#~~~~~~~~~~~~~~~~~~ Complete the code below ~~~~~~~~~~~~~~~~~~
# Write a function that takes three numbers, converts them to boolean and
# sums them. Call the function with 12, 30, 55 as input and assign the 
# output to the variable `result` (e.g. result = myfunc(12,30,55)) 
# Print the outcome. What do you notice?

def sum_of_bool(a, b, c):
  return bool(a)+bool(b)+bool(c)

result = sum_of_bool(12, 30, 55)
print("result is ", result)
```

`@sct`

```{python}
Ex().check_object("result").has_equal_value()
```

---

## A simple script

```yaml
type: NormalExercise 
xp: 100 
key: 0dea768035   
```


A simple script in Python.


`@instructions`
Just try to guess what the script does. Once you're done, press "Run" and see what the script prints.

`@hint`
Has something to do with Wikipedia and airlines ...

`@sample_code`

```{python}
import urllib
import re
    
def get_nr(company_name):
	r = urllib.request.urlopen('https://en.wikipedia.org/wiki/{}'.format(company_name))
	html = r.read().decode('utf-8')
	html = re.sub(r'<[^>]+>', '', html)
	match = re.findall(r'([e|E]mployees\n.?[\d\,]+)', html)
	emp = match[0].replace('\n',': ').strip()
	print(company_name, emp)
	
companies = ['Ryanair', 'Easyjet', 'Air_France', 'Alitalia', 'Etihad_Airways', 'Qantas']
for c in companies:
    get_nr(c)
```

`@solution`

```{python}
import urllib
import re
    
def get_nr(company_name):
	r = urllib.request.urlopen('https://en.wikipedia.org/wiki/{}'.format(company_name))
	html = r.read().decode('utf-8')
	html = re.sub(r'<[^>]+>', '', html)
	match = re.findall(r'([e|E]mployees\n.?[\d\,]+)', html)
	emp = match[0].replace('\n',': ').strip()
	print(company_name, emp)
	
companies = ['Ryanair', 'Easyjet', 'Air_France', 'Alitalia', 'Etihad_Airways', 'Qantas']
for c in companies:
    get_nr(c)
```

`@sct`

```{python}
1
```

---

## A simple script /2

```yaml
type: NormalExercise 
xp: 100 
key: d10eb21c0c   
```


Can you modify the script below to return the number of employees of KLM and Finnair (only)?


`@sample_code`

```{python}
import urllib
import re
    
def get_nr(company_name):
	r = urllib.request.urlopen('https://en.wikipedia.org/wiki/{}'.format(company_name))
	html = r.read().decode('utf-8')
	html = re.sub(r'<[^>]+>', '', html)
	match = re.findall(r'([e|E]mployees\n.?[\d\,]+)', html)
	emp = match[0].replace('\n',': ').strip()
	print(company_name, emp)
	
companies = ['Ryanair', 'Easyjet', 'Air_France', 'Alitalia', 'Etihad_Airways', 'Qantas']
for c in companies:
    get_nr(c)
```

`@solution`

```{python}
import urllib
import re
    
def get_nr(company_name):
	r = urllib.request.urlopen('https://en.wikipedia.org/wiki/{}'.format(company_name))
	html = r.read().decode('utf-8')
	html = re.sub(r'<[^>]+>', '', html)
	match = re.findall(r'([e|E]mployees\n.?[\d\,]+)', html)
	emp = match[0].replace('\n',': ').strip()
	print(company_name, emp)
	
companies = ['KLM', 'Finnair']
for c in companies:
    get_nr(c)
```

`@sct`

```{python}
Ex().check_object("companies").has_equal_value()
```
