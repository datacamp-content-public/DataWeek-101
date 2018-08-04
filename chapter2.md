---
  title: "Chapter 2"
  description: ""
---

## Insert exercise title here

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
df = pd.read_csv("https://raw.githubusercontent.com/RuiChang123/Regression_for_house_price_estimation/master/final_data.csv")
from IPython.display import display, HTML
print(df.head().to_html())
```

`@solution`

```{python}
import pandas as pd
df = pd.read_csv("https://raw.githubusercontent.com/RuiChang123/Regression_for_house_price_estimation/master/final_data.csv")
print(df.head())
```

`@sct`

```{python}
1
```
