#install.packages("lubridate")
#install.packages("rvest")
#install.packages("caret")
#install.packages("xts")
#install.packages("zoo")

library(lubridate)

# Parse a date
date_parsed <- ymd("2025-03-18")

# Format the date
formatted_date <- format(date_parsed, "%B %d, %Y")

# Print formatted date
cat("Formatted Date:", formatted_date, "\n")


library(rvest)

# Define the URL (replace with an actual webpage)
url <- "https://example.com"

# Read and extract data (example: extracting text from <p> tags)
data <- read_html(url) %>% html_nodes("p") %>% html_text()

# Print the extracted data
print(data)


library(caret)

# Load the iris dataset
data(iris)

# Train a classification model using decision trees
model <- train(Species ~ ., data = iris, method = "rpart")

# Print model summary
print(model)

library(xts)
library(zoo)

# Create a time-series object
time_series <- xts(1:10, order.by = Sys.Date() + 1:10)

# Plot the time-series data
plot(time_series, main = "Time-Series Data")
