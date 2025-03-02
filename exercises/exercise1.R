set.seed(22001794)

v1 = sample(1:10, 16, replace = TRUE)
print("Vector V1:")
print(v1)

m1 = matrix(v1, nrow = 8, ncol = 2)
m1.t = t(m1)
print("Matrix M1 (8x2):")
print(m1)

M1_product <- m1 %*% t(m1)
print("M1 * transpose(M1):")
print(M1_product)

m2 <- matrix(v1, nrow = 4, ncol =4)
print("Matrix M2 (4x4):")
print(m2)

m3 = m2 %*% t(m2)
print("M2 * transpose(M2):")
print(m3)
