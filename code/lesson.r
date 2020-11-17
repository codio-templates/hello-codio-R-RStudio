library(tidyverse) #add example code after this line

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))