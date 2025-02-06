install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()