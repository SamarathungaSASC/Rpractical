A <- array(month.name)
print("A:")
print(A)

B <- factor(A)
print("B:")
print(B)
print("-----------------------------------------------------------------------")

nlevels(B)

print(A[-3])
print("-----------------------------------------------------------------------")

dim(A) <- c(3,4)
print(dim(A))

U <- list(month = A, num = 1:12)
print(U)