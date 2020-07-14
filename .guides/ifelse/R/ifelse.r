
#this imports the data
library(dslabs)
data(murders)
# add code after this line
# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murder$state)>8, murders$abb, murders$state)
