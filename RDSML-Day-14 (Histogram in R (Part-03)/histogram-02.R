# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# Creating the Basic histogram using ggplot2
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(color = 'white')

# Changing histogram plot line colors by groups
ggplot(dataset, aes(x = weight, fill = sex)) + 
  geom_histogram(color = 'white', alpha = 0.5, position = "identity")

# We can change the position adjustment 
# to use for overlapping points on the layer 
# Possible values for the argument position are 
# "identity", "stack", "dodge". Default value is "stack". 

# Interleaved histograms 
ggplot(dataset, aes(x = weight, fill = sex)) + 
  geom_histogram(color = 'white', alpha = 0.5, position = "dodge") +
  theme(legend.position = "top")

# The Plyr package is used to calculate the mean weight of each group.
 install.packages("Plyr")






