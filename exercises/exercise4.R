data <- c(12, 15, 18, 20, 22, 25, 27, 30, 35, 100)

q <- quantile(data, probe = c(0.25, 0.75))
Q1 <- q[1]
Q3 <- q[2]
IQR_value <- IQR(data)

lower_bound <- Q1 -1.5 * IQR_value
upper_bound <- Q3 +1.5 * IQR_value

outliners <- data[data < lower_bound | data > upper_bound]

print(paste("Q1 (First Quartile):", Q1))
print(paste("Q3 (Third Quartile):", Q3))
print(paste("IQR (Interquartile Range):", IQR_value))
print("Outliners")
print(outliners)
