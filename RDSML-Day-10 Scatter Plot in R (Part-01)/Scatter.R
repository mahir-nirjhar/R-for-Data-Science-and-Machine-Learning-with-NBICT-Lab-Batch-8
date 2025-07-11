# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()

# Changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape=8)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape=8) + 
  geom_smooth(method ="lm", se= FALSE )+
  labs(title = "Scatterplot of a car wt vs car mpg", 
       x = "Wt of Cars (pound)",
       y = "Miles per Gallon (Gallon)")

