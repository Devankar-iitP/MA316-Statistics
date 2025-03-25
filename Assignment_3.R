# Name - Devankar Raj
# Roll - 2201MC15
# Assignment - 3

find_mean = function(vec, n)
{
  tmp = 0
  for(i in 1:n)
    tmp = tmp + vec[i]
  
  return(tmp/n)
}

# ****************** Question 1 ****************************

# F(x) = ln(1+x) ; 0 ≤ x ≤ e−1
# Let u = ln(1+x) ; 0 ≤ u ≤ 1 --> x = e^u - 1

sample_data = vector(length = 1000)
x = vector(length = 1000)
u = runif(1000)

for(i in 1:1000)
  x[i] = exp(u[i])-1

sample_mean = find_mean(x, 1000)
x = sort(x);
sample_median = (x[500]+x[501])/2

# PDF is f(x) = 1/(1+x) --> Differentiate F(x)
# Theoretical mean = integral of (x*f(x)) from 0 to e-1

Theoretical_mean = exp(1)-2
Theoretical_median = exp(0.5)-1  # When CDF = 0.5
sample_mean
sample_median
Theoretical_mean
Theoretical_median


# ****************** Question 2 ****************************

sample_data = runif(1000, min = 0, max = 2)
sample_mean =  find_mean(sample_data, 1000)

sample_variance = 0
for(i in 1:1000)
  sample_variance = sample_variance + (sample_data[i] - sample_mean)*(sample_data[i] - sample_mean)

sample_variance = sample_variance/999  # Bessel's Correction

Theoretical_mean = 1   # (a+b)/2 = 1
Theoretical_variance = 1/3    # ((b-a)^2)/12

sample_mean
sample_variance
Theoretical_mean
Theoretical_variance


# ****************** Question 3 ****************************

lambda = runif(1, min = 0.1, max = 100)  # lambda is (0, infinity]

# CDF = (1- e^(-lambda*x)) 
u = runif(1000)
sample_data = vector(length = 1000)

for(i in 1:1000)
  sample_data[i] = -(1/lambda)*log(1-u[i])

sample_mean =  find_mean(sample_data, 1000)

sample_variance = 0
for(i in 1:1000)
  sample_variance = sample_variance + (sample_data[i] - sample_mean)*(sample_data[i] - sample_mean)

sample_variance = sample_variance/999   # Bessel's Correction


Theoretical_mean = 1/lambda   
Theoretical_variance = 1/(lambda*lambda)    

sample_mean
sample_variance
Theoretical_mean
Theoretical_variance
