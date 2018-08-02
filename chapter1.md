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
type: TabExercise 
xp: 100 
key: 24f012063e   
```


There are four collection data types in the Python programming language:

1. **List** is a collection which is ordered and changeable. Allows duplicate members.
2. **Dictionary** is a collection which is unordered, changeable and indexed. No duplicate members.
3. **Tuple** is a collection which is ordered and unchangeable. Allows duplicate members.
4. **Set** is a collection which is unordered and unindexed. No duplicate members.

|Collection|Ordered|Changeable|Duplicates|
|------------------------------------------------------|
|List|Yes|Yes|Yes|


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
# a list
a = [0, 1, 2, 3]

# a dictionary
b = {'name': 'John',
     'surname': 'Smith',
     'age': 42 }

# a tuple
c = (1, 2)

# a set
d = {1, 2, 3}
```

***



```yaml
type: NormalExercise 
xp: 100 
key: e4564e1437   
```





`@instructions`


`@hint`


`@sample_code`

```{python}

```


`@solution`

```{python}

```


`@sct`

```{python}

```


