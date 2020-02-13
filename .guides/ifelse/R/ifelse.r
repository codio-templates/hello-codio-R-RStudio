
#this imports the data
library(dslabs)
data(murders)
# add code after this line
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)
