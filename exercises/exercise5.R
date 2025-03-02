# Define the dataset
data <- c(425, 430, 430, 435, 435, 435, 435, 435, 440, 440,
          440, 440, 440, 445, 445, 445, 445, 445, 450, 450,
          450, 450, 450, 460, 460, 460, 465, 465, 465, 470,
          470, 470, 472, 475, 475, 475, 480, 480, 480, 480,
          485, 490, 490, 500, 500, 500, 500, 500, 510, 510,
          515, 525, 525, 525, 525, 535, 549, 550, 570, 570,
          575, 575, 580, 590, 600, 600, 600, 600, 615, 615)

# Mean
mean_value <- mean(data)

# Median
median_value <- median(data)

# Mode function (since R does not have a built-in mode function)
mode_value <- as.numeric(names(sort(table(data), decreasing = TRUE)[1]))

# 90th Percentile
percentile_90 <- quantile(data, 0.90)

# Quartiles
quartiles <- quantile(data)

# Range
range_value <- max(data) - min(data)

# Interquartile Range (IQR)
iqr_value <- IQR(data)

# Variance
variance_value <- var(data)

# Standard Deviation
std_dev <- sd(data)

# Coefficient of Variation (CV)
cv_value <- (std_dev / mean_value) * 100

# Display results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
cat("90th Percentile:", percentile_90, "\n")
cat("Quartiles:", quartiles, "\n")
cat("Range:", range_value, "\n")
cat("Interquartile Range (IQR):", iqr_value, "\n")
cat("Variance:", variance_value, "\n")
cat("Standard Deviation:", std_dev, "\n")
cat("Coefficient of Variation (CV):", cv_value, "%\n")
