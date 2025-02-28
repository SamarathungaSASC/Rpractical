library(ggplot2)

# Load the dataset
data(iris)

# Structure of the dataset
str(iris)

# Summary statistics
summary(iris)

# First few rows
head(iris)

# Number of unique species
length(unique(iris$Species))

# Mean of each numerical column
colMeans(iris[, 1:4])

# Median of each numerical column
apply(iris[, 1:4], 2, median)

# Standard deviation of each numerical column
apply(iris[, 1:4], 2, sd)

#Pie Chart for species distribution
species_count <- table(iris$Species)
pie(species_count, labels = names(species_count), main = "Species Distribution")

#Bar Chart for species count
ggplot(iris, aes(x = Species)) +
  geom_bar(fill = "lightgreen") +
  ggtitle("Count of Each Species") +
  theme_minimal()

#Histogram for Sepal Length and Petal Length

# Histogram for Sepal Length
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.3, fill = "blue", color = "black") +
  ggtitle("Histogram of Sepal Length") +
  theme_minimal()

# Histogram for Petal Length
ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(binwidth = 0.3, fill = "red", color = "black") +
  ggtitle("Histogram of Petal Length") +
  theme_minimal()

#Scatter plot between Sepal Length and Petal Length
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  ggtitle("Scatterplot of Sepal Length vs Petal Length") +
  theme_minimal()

#Lower Tail Test
t.test(iris$Sepal.Length, mu = 5.8, alternative = "less")

#Upper Tail Test
t.test(iris$Petal.Length, mu = 3.5, alternative = "greater")

#Two-Tailed Test
t.test(iris$Sepal.Width, mu = 3.0, alternative = "two.sided")


