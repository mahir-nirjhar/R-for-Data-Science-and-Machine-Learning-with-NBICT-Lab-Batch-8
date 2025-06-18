# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# Basic Histogram using ggplot2
ggplot(dataset, aes(x = weight))+
  geom_histogram()

# changing the width of bins
ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 1, color = 'black')

# Changing colour 
ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 1, color = 'black', fill = 'lightblue')

# Adding the mean line
myplot = ggplot(dataset, aes(x = weight))+
  geom_histogram(binwidth = 1, color = 'black', fill = 'white')

myplot + geom_vline(aes(xintercept = mean(weight)),
                    color = 'blue', linetype = 'dashed', size = 1)

# Histogram with density plot
ggplot(dataset, aes(x = weight))+
  geom_histogram(aes(y = after_stat(density)), color = 'black', fill = 'white') + 
  geom_density( fill = "blue", alpha = 0.2)

# Changing the bin border color and fill color
ggplot(dataset, aes(x = weight))+
  geom_histogram(color = 'dark blue', fill = 'yellow')  
 
