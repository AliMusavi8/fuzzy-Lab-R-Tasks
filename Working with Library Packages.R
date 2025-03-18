#install.packages("ggplot2")
#install.packages("dplyr")
#install.packages("tidyr")
#install.packages("data.table")

library(ggplot2)

# Create a scatterplot using ggplot2
ggplot(mtcars, aes(x = mpg, y = hp)) + geom_point() + 
  ggtitle("Scatterplot of MPG vs Horsepower")


library(dplyr)

# Filter for species "setosa" and arrange by Sepal.Length
iris_filtered <- iris %>% filter(Species == "setosa") %>% arrange(Sepal.Length)

# Print the first few rows
print(head(iris_filtered))


library(tidyr)

# Create a wide-format dataset
data_wide <- data.frame(ID = c(1, 2), Jan = c(10, 20), Feb = c(15, 25))

# Convert from wide to long format
data_long <- pivot_longer(data_wide, cols = -ID, names_to = "Month", values_to = "Value")
print(data_long)

# Convert back from long to wide format
data_wide_back <- pivot_wider(data_long, names_from = "Month", values_from = "Value")
print(data_wide_back)


library(data.table)

# Create a data table
dt <- data.table(ID = c(1, 1, 2, 2), Value = c(10, 20, 30, 40))

# Perform aggregation (sum of values grouped by ID)
dt_agg <- dt[, .(Total = sum(Value)), by = ID]

# Print aggregated result
print(dt_agg)

