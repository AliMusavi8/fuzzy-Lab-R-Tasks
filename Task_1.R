# Load the dataset (already built-in)
data(mtcars)

# Display the first few rows of mtcars
head(mtcars)

# Scatter plot of mpg vs hp
plot(mtcars$hp, mtcars$mpg, 
     main = "Horsepower vs MPG",
     xlab = "Horsepower (hp)", 
     ylab = "Miles Per Gallon (mpg)",
     col = "blue", 
     pch = 16)  # Circle markers