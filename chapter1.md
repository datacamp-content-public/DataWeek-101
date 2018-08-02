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


We learn to define variables and print to screen in Python.

This is a variable assignment:
```
x = 5                         # integers - this is a comment
y = True                      # booleans
z = "Learning python"         # strings

# comments start with  `#`

```
Python supports by default simple operations:
```
a = 5 + 6
b = 7 / 2
c = a + 1
d = c - 1
```
We can print to screen using `print()`:
```
print(a)
print(b, c, d)
```


`@instructions`
Complete the code on the right. Assign the value "Hello" to `x` and `5` to `y` and their product to `z`. What do you expect to be the output?  Finally, print `z` to screen.

`@hint`
`x = "some words"`
`y = `
`z = x *`

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

# Assign "Hello" to x, 5 to y and their product to z. Print z to screen.

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

# Assign "Hello" to x, 5 to y and their product to z. Print z to screen.

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


There are four collection data types in the Python programming language:

1. **List** is a collection which is ordered and changeable. Allows duplicate members.
2. **Dictionary** is a collection which is unordered, changeable and indexed. No duplicate members.
3. **Tuple** is a collection which is ordered and unchangeable. Allows duplicate members.
4. **Set** is a collection which is unordered and unindexed. No duplicate members.

|Collection|Ordered|Changeable|Allows Duplicates|
|------------------------------------------------------|
|List|Yes|Yes|Yes|
|Dictionary|No|Yes|No|
|Tuple|Yes|No|Yes|
|Set|No|Yes|No|


`@instructions`
Run the code and examine the output.

`@hint`


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

## If-then-else

```yaml
type: NormalExercise 
xp: 100 
key: f7a970dee6   
```


If-then-else blocks are used in Python to perform different ... depending on which condition is met.
```
a = 1
b = 2

if (a > 0):
        b += 1
else:
        b += 10

```

Note that 

- a colon is needed at the end of the `if(condition)` line
- the special operator `+=` (`b +=1` is the same as writing `b = b +1`)


`@instructions`
Change the value of `a` so that the `else` clause is evaluated.

`@hint`


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
