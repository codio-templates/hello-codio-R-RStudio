----------------
Let's use our first graph to answer a question: Do cars with big engines use more fuel than cars with small engines? You probably already have an answer, but try to make your answer precise. What does the relationship between engine size and fuel efficiency look like? Is it positive? Negative? Linear? Nonlinear?

### The `mpg` data frame

You can test your answer with the `mpg` __data frame__ found in ggplot2 (aka  `ggplot2::mpg`). A data frame is a rectangular collection of variables (in the columns) and observations (in the rows). `mpg` contains observations collected by the US Environmental Protection Agency on 38 models of car. 


```r
mpg
#> # A tibble: 234 x 11
#>   manufacturer model displ  year   cyl trans  drv     cty   hwy fl    class
#>   <chr>        <chr> <dbl> <int> <int> <chr>  <chr> <int> <int> <chr> <chr>
#> 1 audi         a4      1.8  1999     4 auto(~ f        18    29 p     comp~
#> 2 audi         a4      1.8  1999     4 manua~ f        21    29 p     comp~
#> 3 audi         a4      2    2008     4 manua~ f        20    31 p     comp~
#> 4 audi         a4      2    2008     4 auto(~ f        21    30 p     comp~
#> 5 audi         a4      2.8  1999     6 auto(~ f        16    26 p     comp~
#> 6 audi         a4      2.8  1999     6 manua~ f        18    26 p     comp~
#> # ... with 228 more rows
```

Among the variables in `mpg` are:

1. `displ`, a car's engine size, in litres.

1. `hwy`, a car's fuel efficiency on the highway, in miles per gallon (mpg). 
  A car with a low fuel efficiency consumes more fuel than a car with a high 
  fuel efficiency when they travel the same distance. 

To learn more about `mpg`, type `R` and hit Enter/Return in the terminal window and then open the help page by typing `??mpg`.

### Creating a ggplot

To plot `mpg`, copy the code below and paste it into lesson.r (upper left window) then click **Run Code**. This puts `displ` on the x-axis and `hwy` on the y-axis. Click "Refresh Plot" to view the results.


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

{Run code | terminal}(Rscript code/lesson.r)
 
[Refresh Plot](close_preview Rplots.pdf panel=1; open_preview Rplots.pdf panel=1)



![Figure 5.1](visualize_files/figure-latex/unnamed-chunk-4-1.jpg)

**Figure 5.1**

The plot shows a negative relationship between engine size (`displ`) and fuel efficiency (`hwy`). In other words, cars with big engines use more fuel. Does this confirm or refute your hypothesis about fuel efficiency and engine size?

With ggplot2, you begin a plot with the function `ggplot()`. `ggplot()` creates a coordinate system that you can add layers to. The first argument of `ggplot()` is the dataset to use in the graph. So `ggplot(data = mpg)` creates an empty graph, but it's not very interesting so I'm not going to show it here.

You complete your graph by adding one or more layers to `ggplot()`. The function `geom_point()` adds a layer of points to your plot, which creates a scatterplot. ggplot2 comes with many geom functions that each add a different type of layer to a plot. You'll learn a whole bunch of them throughout this chapter.

Each geom function in ggplot2 takes a `mapping` argument. This defines how variables in your dataset are mapped to visual properties. The `mapping` argument is always paired with `aes()`, and the `x` and `y` arguments of `aes()` specify which variables to map to the x and y axes. ggplot2 looks for the mapped variables in the `data` argument, in this case, `mpg`.

### A graphing template

Let's turn this code into a reusable template for making graphs with ggplot2. To make a graph, replace the bracketed sections in the code below with a dataset, a geom function, or a collection of mappings.


```r
ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
```

In the plot below, one group of points (highlighted in red) seems to fall outside of the linear trend. These cars have a higher mileage than you might expect. How can you explain these cars? 


![Figure 5.3](visualize_files/figure-latex/unnamed-chunk-6-1.jpg)

**Figure 5.3**

Let's hypothesize that the cars are hybrids. One way to test this hypothesis is to look at the `class` value for each car. The `class` variable of the `mpg` dataset classifies cars into groups such as compact, midsize, and SUV. If the outlying points are hybrids, they should be classified as compact cars or, perhaps, subcompact cars (keep in mind that this data was collected before hybrid trucks and SUVs became popular).

You can add a third variable, like `class`, to a two dimensional scatterplot by mapping it to an __aesthetic__. An aesthetic is a visual property of the objects in your plot. Aesthetics include things like the size, the shape, or the color of your points. You can display a point (like the one below) in different ways by changing the values of its aesthetic properties. Since we already use the word "value" to describe data, let's use the word "level" to describe aesthetic properties. Here we change the levels of a point's size, shape, and color to make the point small, triangular, or blue:


![Figure 5.4](visualize_files/figure-latex/unnamed-chunk-7-1.jpg)

**Figure 5.4**

You can convey information about your data by mapping the aesthetics in your plot to the variables in your dataset. For example, you can map the colors of your points to the `class` variable to reveal the class of each car.


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
```

{Run code | terminal}(Rscript code/lesson.r)
 
[Refresh Plot](close_preview Rplots.pdf panel=1; open_preview Rplots.pdf panel=1)



![Figure 5.5](visualize_files/figure-latex/unnamed-chunk-8-1.jpg)

**Figure 5.5**

(If you prefer British English, like Hadley, you can use `colour` instead of `color`.)

To map an aesthetic to a variable, associate the name of the aesthetic to the name of the variable inside `aes()`. ggplot2 will automatically assign a unique level of the aesthetic (here a unique color) to each unique value of the variable, a process known as __scaling__. ggplot2 will also add a legend that explains which levels correspond to which values.

The colors reveal that many of the unusual points are two-seater cars. These cars don't seem like hybrids, and are, in fact, sports cars! Sports cars have large engines like SUVs and pickup trucks, but small bodies like midsize and compact cars, which improves their gas mileage. In hindsight, these cars were unlikely to be hybrids since they have large engines.

In the above example, we mapped `class` to the color aesthetic, but we could have mapped `class` to the size aesthetic in the same way. In this case, the exact size of each point would reveal its class affiliation. We get a _warning_ here, because mapping an unordered variable (`class`) to an ordered aesthetic (`size`) is not a good idea.


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
#> Warning: Using size for a discrete variable is not advised.
```

{Run code | terminal}(Rscript code/lesson.r)
 
[Refresh Plot](close_preview Rplots.pdf panel=1; open_preview Rplots.pdf panel=1)



![Figure 5.6](visualize_files/figure-latex/unnamed-chunk-9-1.jpg)

**Figure 5.6**

Or we could have mapped `class` to the _alpha_ aesthetic, which controls the transparency of the points, or to the shape aesthetic, which controls the shape of the points.


```r
# Left
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Right
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
```
{Run code | terminal}(Rscript code/lesson.r)
 
[Refresh Plot](close_preview Rplots.pdf panel=1; open_preview Rplots.pdf panel=1)


![Figure 5.1](visualize_files/figure-latex/unnamed-chunk-10-1.jpg)
![Figure 5.1](visualize_files/figure-latex/unnamed-chunk-10-2.jpg)

**Figure 5.1**

What happened to the SUVs? ggplot2 will only use six shapes at a time. By default, additional groups will go unplotted when you use the shape aesthetic.

For each aesthetic, you use `aes()` to associate the name of the aesthetic with a variable to display. The `aes()` function gathers together each of the aesthetic mappings used by a layer and passes them to the layer's mapping argument. The syntax highlights a useful insight about `x` and `y`: the x and y locations of a point are themselves aesthetics, visual properties that you can map to variables to display information about the data. 

Once you map an aesthetic, ggplot2 takes care of the rest. It selects a reasonable scale to use with the aesthetic, and it constructs a legend that explains the mapping between levels and values. For x and y aesthetics, ggplot2 does not create a legend, but it creates an axis line with tick marks and a label. The axis line acts as a legend; it explains the mapping between locations and values.

You can also _set_ the aesthetic properties of your geom manually. For example, we can make all of the points in our plot blue:


```r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
```

{Run code | terminal}(Rscript code/lesson.r)
 
[Refresh Plot](close_preview Rplots.pdf panel=1; open_preview Rplots.pdf panel=1)



![Figure 5.7](visualize_files/figure-latex/unnamed-chunk-11-1.jpg)

**Figure 5.7**

Here, the color doesn't convey information about a variable, but only changes the appearance of the plot. To set an aesthetic manually, set the aesthetic by name as an argument of your geom function; i.e. it goes _outside_ of `aes()`. You'll need to pick a level that makes sense for that aesthetic:

* The name of a color as a character string.

* The size of a point in mm.

* The shape of a point as a number, as shown in Figure \@ref(fig:shapes).

![Figure 5.2R has 25 built in shapes that are identified by numbers. There are some seeming duplicates: for example, 0, 15, and 22 are all squares. The difference comes from the interaction of the `colour` and `fill` aesthetics. The hollow shapes (0--14) have a border determined by `colour`; the solid shapes (15--18) are filled with `colour`; the filled shapes (21--24) have a border of `colour` and are filled with `fill`.](visualize_files/figure-latex/shapes-1.jpg)

**Figure 5.2R has 25 built in shapes that are identified by numbers. There are some seeming duplicates: for example, 0, 15, and 22 are all squares. The difference comes from the interaction of the `colour` and `fill` aesthetics. The hollow shapes (0--14) have a border determined by `colour`; the solid shapes (15--18) are filled with `colour`; the filled shapes (21--24) have a border of `colour` and are filled with `fill`.**



<font size="2"><b>Source: Grolemund, G., & Wickham, H. (2018). R for data science.</b></font>