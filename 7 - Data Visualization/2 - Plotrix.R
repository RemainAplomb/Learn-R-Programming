#===============================================================

# Data Visualization - Plotrix

#===============================================================

## Install Plotrix
install.packages("plotrix")
library(plotrix)

#===============================================================

# Create a pie chart
slices <- c(10, 20, 30, 15, 25)
labels <- c("A", "B", "C", "D", "E")
pie(slices, labels = labels)

#===============================================================

# Create 3D Pie Chart
x <- c(33, 45, 70, 110)
lbl <- c("Soap", "Detergent", "Oil", "Shampoo")

# Plot the chart.
pie3D(x, labels = lbl, explode = 0.1, main = "Pie Chart of Categories")

#===============================================================

# Create Histogram
v <- c(9, 13, 21, 8, 36, 22, 12, 41, 31, 33, 19)

# Create the histogram using base R.
hist(v, xlab = "Weight", col = "green", border = "red")

#===============================================================

# Create a 3D scatter plot
x <- rnorm(100)
y <- rnorm(100)
z <- rnorm(100)
scatter3d(x, y, z, xlab = "X", ylab = "Y", zlab = "Z", main = "3D Scatter Plot")

#===============================================================

# Install the 'rgl' package if not already installed
install.packages("rgl")

# Load the 'rgl' package
library(rgl)

# Generate random data
x <- rnorm(100)
y <- rnorm(100)
z <- rnorm(100)

# Create a 3D scatter plot
plot3d(x, y, z, type = "s", size = 1, col = "blue", xlab = "X", ylab = "Y", zlab = "Z", main = "3D Scatter Plot")

