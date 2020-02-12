```yaml
type: NormalExercise
key: 33ed29e3c1
lang: r
xp: 100
skills: 1
```

Now let's actually check if we get the exact same answer.

`@instructions`
- Confirm that `s_n` and $n(n+1)(2n+1)/6$ are the same using the `identical` command.

`@hint`
`s_n` is a vector. Because `n` is a vector `n*(n+1)*(2n+1)/6` is a vector. You can compare two vectors `x` and `y` with `identical(x, y)`.

`@pre_exercise_code`
```{r}
# no pec
```

`@sample_code`
```{r}
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions.

```

`@solution`
```{r}
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Define the vector of n
n <- 1:25

# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}

# Check that s_n is identical to the formula given in the instructions.
identical(s_n, n*(n+1)*(2*n+1)/6)
```

`@sct`
```{r}
test_error()
test_function("identical")
test_output_contains("identical(s_n, n*(n+1)*(2*n+1)/6)", incorrect_msg = "Make sure you're checking your formula!")
success_msg("This is great! We are done with this module. Time to move on to bigger things!")
```
