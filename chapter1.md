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
x = 5                         # integers
y = True                      # booleans
z = "Learning python"         # strings
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
Complete the code on the right.

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
a = 5 + 6
b = 7 / 2
c = a + 1
d = c - 1 

print(a)
print(b, c, d)

# Change the value of b to 7.0 / 2 and print it to screen

b = 
```

`@solution`

```{python}
a = 5 + 6
b = 7 / 2
c = a + 1
d = c - 1 

print(a)
print(b, c, d)

# Change the value of b to 7.0 / 2 and print it to screen

b = 7.0 / 2
print(b)
```

`@sct`

```{python}
Ex().check_object('b').has_equal_value()
```

---

## Insert exercise title here

```yaml
type: NormalExercise 
xp: 100 
key: 54ea0f3a94   
```


Test


`@instructions`
Test

`@hint`


`@pre_exercise_code`

```{python}

```


`@sample_code`

```{python}
a = 7
```

`@solution`

```{python}
a = 7
```

`@sct`

```{python}
1
```
