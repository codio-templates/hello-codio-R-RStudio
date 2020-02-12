```yaml
type: NormalExercise
key: 3d324d0749
lang: r
xp: 100
skills: 1
```

You will encounter situations in which the function you need does not already exist. R permits you to write your own.  Let's practice one such situation, in which you first need to define the function to be used. The functions you define can have multiple arguments as well as default values.

To define functions we use `function`. For example the following function adds 1 to the number it receives as an argument:

```{r}
my_func <- function(x){
    y <- x + 1
    y
}
```

The last value in the function, in this case that stored in `y`, gets returned.

If you run the code above R does not show anything. This means you defined the function. You can test it out like this:

```{r}
my_func(5)
```

`@instructions`
We will define a function `sum_n` for this exercise.
- Create a function `sum_n` that for any given value, say `n`, creates the vector `1:n`, and then computes the sum of the integers from 1 to n. 
- Use the function you just defined to determine the sum of integers from 1 to 5,000.

`@hint`
- To make it inclusive, use {}. 
- You can define the function like this:

```{r}
sum_n <- function(n){
    x <- 1:n
    sum(x)
}
```

`@pre_exercise_code`
```{r}
# no pec 
```

`@sample_code`
```{r}
# Create function called `sum_n`

# Use the function to determine the sum of integers from 1 to 5000

```

`@solution`
```{r}
# Create function called `sum_n`
sum_n <- function(n){
    x <- 1:n
    sum(x)
}

# Determine the sum of integers from 1 to 5000
sum_n(5000)

```

`@sct`
```{r}
test_error()
test_function("sum_n", incorrect_msg = "You need to check for the sum of 5000 integers!")
fun_def <- ex() %>% check_fun_def("sum_n")
fun_def %>% check_arguments()
fun_def %>% check_call(5000) %>% check_result() %>% check_equal()
fun_def %>% check_call(100) %>% check_result() %>% check_equal()
fun_def %>% check_call(1000) %>% check_result() %>% check_equal()

fun_def %>% check_body()
success_msg("This is awesome! Let's get to the next exercise.")
```