# Name - Devankar Raj
# Roll - 2201MC15

# Assignment - 1

# ****************** Question 1 ****************************
A = matrix(nrow = 2, ncol = 3, data = c(3,-1,-2,4,1,-2))
B = matrix(nrow = 3, ncol = 2, data = c(-7, 9, 2, 4, 5, -1))

matrix_product = A %*% B
matrix_transpose = t(matrix_product)
matrix_inverse = solve(matrix_product)

print(matrix_product)
print(matrix_transpose)
print(matrix_inverse)

details = function(matrix_name)
{
  for(r in 1:nrow(matrix_name))
  {
    cat("Mean of Row -", r, "is", sum(matrix_name[r,])/ncol(matrix_name), "\n")
    tmp = 0
    for(c in 1:ncol(matrix_name))
    {
      tmp = tmp + (matrix_name[r,c] - sum(matrix_name[r,])/ncol(matrix_name))^2
    }
    cat("Standard deviation of Row -", r, "is", sqrt(tmp/ncol(matrix_name)), "\n\n")
  }
  
  for(c in 1:ncol(matrix_name))
  {
    cat("Mean of Column -", c, "is", sum(matrix_name[,c])/nrow(matrix_name), "\n")
    tmp = 0
    for(r in 1:nrow(matrix_name))
    {
      tmp = tmp + (matrix_name[r,c] - sum(matrix_name[,c])/nrow(matrix_name))^2
    }
    cat("Standard deviation of Column -", c, "is", sqrt(tmp/nrow(matrix_name)), "\n\n")
  }
}

details(A)
details(B)
details(matrix_product)


# ****************** Question 2 ****************************

factorial_of_given_number = function(n)
{
  tmp = 1
  if(n<1)
  {
    print("Enter a positive integer ....")
  }
  else if(n>1)
  {
    for(i in 2:n)
    {
      tmp = tmp*i
    }
  }
  
  cat("Factorial of", n, "is", tmp, "\n\n")
}

factorial_of_given_number(6)
factorial_of_given_number(13)
factorial_of_given_number(37)


# ****************** Question 3 ****************************

check_prime = function(n)
{
  chk = 0
  for(i in 2:sqrt(n))
  {
    if(!(n %% i))
    {
      cat("Given number", n, "is composite !!", "\n\n")
      chk = 1
      break
    }
  }
  
  if(!chk)
  {
    cat("Given number", n, "is prime !!", "\n\n")
  }
}

check_prime(8)
check_prime(5)

# ****************** Question 4 ****************************

details2 = function(data_set)
{
  cat("Mean of dataset is", sum(data_set)/length(data_set), "\n")
  
  sorted_data = sort(data_set)
  
  if(length(data_set) %% 2)
  {
    cat("Median of dataset is", sorted_data[length(data_set) %/% 2 + 1], "\n")
  }
  else
  {
    cat("Median of dataset is", (sorted_data[length(data_set) %/% 2]+sorted_data[length(data_set) %/% 2 + 1])/2, "\n\n")
  }
}

tmp = c(5,10,6,8,12,16,20,10,16,15)
details2(tmp)

# ****************** Question 5 ****************************

fib_sequence = function(n)
{
  tmp = "0, 1"
  a = 0 ; b = 1
  for(i in 1:(n-2))
  {
    yu = a+b
    tmp = paste(tmp, a+b, sep = ', ')
    a = b; b = yu
  }
  return(tmp)
}

print(fib_sequence(10))