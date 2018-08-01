---
  title: "Test"
  description: "Test"
---

## An exercise title written in sentence case

```yaml
type: NormalExercise 
lang: python
xp: 100 
skills: 2
key: 245f3de3cd   
```


This is the assignment text. It should help provide students with the background information needed.
The instructions that follow should be in bullet point form with clear guidance for what is expected.


`@instructions`
- Instruction 1
- Instruction 2
- Instruction 3

`@hint`
- Here is the hint for this setup problem. 
- It should get students 50% of the way to the correct answer.
- So don't provide the answer, but don't just reiterate the instructions.
- Typically one hint per instruction is a sensible amount.

`@pre_exercise_code`

```{python}
# Load datasets and packages here.
```

`@sample_code`

```{python}
# Your
# sample
# code
# should
# be
# ideally
# 10 lines or less,
# with a max
# of 16 lines.
```

`@solution`

```{python}
# Answer goes here
# Make sure to match the comments with your sample code
# to help students see the differences from solution
# to given.
```

`@sct`

```{python}
# Update this to something more informative.
success_msg("Some praise! Then reinforce a learning objective from the exercise.")
```

---

## Insert exercise title here

```yaml
type: NormalExercise 
xp: 100 
key: 2bd734d190   
```


Let's start printing to the console.


`@instructions`
print("Hello World")

`@sample_code`

```{python}
# to print Hello World
print("Hello World")

# now print your name (e.g. Hello John)
```

`@solution`

```{python}
print("Giorgio")
```

`@sct`

```{python}
Ex().has_output(r'')
```

---

## Your first python script

```yaml
type: TabExercise 
xp: 100 
key: 83d1ec5467   
```


We will learn how to set up variables and print in Python.


`@pre_exercise_code`

```{python}
x = 5
y = 1
z = x + y
```

`@sample_code`

```{python}
print(z)
```
