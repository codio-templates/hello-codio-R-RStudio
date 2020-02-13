Use the following data for this exercise:
```
library(dslabs)
data(murders)
```

The function `nchar` tells you how many characters long a character vector is. For example:

```{r}
char_len <- nchar(murders$state)
head(char_len)
```
{Try it | terminal}(Rscript code/ifelse_student.r)

The function `ifelse` is useful because you convert a vector of logicals into something else. For example, some datasets use the number -999 to denote NA. A bad practice! You can convert the -999 in a vector to NA using the following `ifelse` call:
```{r}
x <- c(2, 3, -999, 1, 4, 5, -999, 3, 2, 9)
ifelse(x == -999, NA, x)
```

{Try it | terminal}(Rscript code/ifelse_student.r)

If the entry is -999 it returns NA, otherwise it returns the entry.

{Submit!|assessment}(test-1672136394)

{Reveal Hint|assessment}(test-1445316250)

|||guidance
```{r}
# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)

```
|||
