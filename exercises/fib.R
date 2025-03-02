fibonacci <- function(n) {
  if (n <= 0) {
    return(NULL)
  } else if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(1)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

print_fibonacci_sequence <- function(n) {
  if (n <= 0) {
    cat("Invalid input. Please enter a positive integer.\n")
    return()
  }
  
  cat("Fibonacci Sequence:")
  for (i in 1:n) {
    cat(" ", fibonacci(i))
  }
  cat("\n")
}

# Change the value of 'n' to the desired number of terms in the sequence
n <- 10
print_fibonacci_sequence(n)
