# Basic Descriptive Statistics
numeric_vector <- c(1, 2, 2, 3, 4, 5, 5, 5, 6, 7)
mean_value <- mean(numeric_vector)
median_value <- median(numeric_vector)
mode_value <- as.numeric(names(sort(table(numeric_vector), decreasing = TRUE)[1]))
cat("Mean:", mean_value, "Median:", median_value, "Mode:", mode_value, "\n")

# Sum of even numbers from 1 to 100
even_sum <- sum(seq(2, 100, by = 2))
cat("Sum of even numbers from 1 to 100:", even_sum, "\n")

# Concatenating strings using paste()
concatenated_string <- paste("Hello", "World", "in R", sep = " - ")
cat("Concatenated String:", concatenated_string, "\n")

# Matrix operations
mat <- matrix(1:9, nrow = 3)
transpose_mat <- t(mat)
determinant_mat <- det(mat)
inverse_mat <- tryCatch(solve(mat), error = function(e) "Matrix is singular and cannot be inverted")

print("Transposed Matrix:")
print(transpose_mat)
print("Determinant:")
print(determinant_mat)
print("Inverse Matrix:")
print(inverse_mat)

