#===============================================================

# Data Visualization - GGPlot

#===============================================================

## Install ggplot
install.packages("ggplot2")
library(ggplot2)

#===============================================================

## Create scatter plot
ggplot(data = mtcars, aes(x = mpg, y = wt)) +
  geom_point()

#===============================================================

## Create Bar chart
ggplot(data = mtcars, aes(x = cyl)) +
  geom_bar()

#===============================================================

# Create a line plot
ggplot(data = economics, aes(x = date, y = unemploy)) +
  geom_line()

#===============================================================

# Create a histogram
ggplot(data = mtcars, aes(x = mpg)) +
  geom_histogram()

#===============================================================

# Create a boxplot
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot()

#===============================================================

