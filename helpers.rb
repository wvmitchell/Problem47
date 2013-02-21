def prime?(number)
  # No number has a factor larger than it's sqare root, this optimizes the functi$
  ceiling_root = Math.sqrt(number).ceil

  # Two is a prime, but will also satisfy 2%2 == 0, this special case must be con$
  if number == 2
    return true
  end

  # To check if a number is prime, use modulo division on the number and all the $
  # If the answer is ever 0, the number is not prime
  divisor = 2
  while divisor <= ceiling_root
    if number % divisor == 0
      return false
    end
    divisor += 1
  end

  #If we reach this part of the the algorithm, we have a prime number
  return true
end

def get_factors(number)
  start = number/2
  factors = []
  
  while start > 1
    factors << start if number % start ==0
    start -= 1
  end
  
  return factors
end

def primes(array)
  newA = array.select {|num|
    num if prime?(num)
  }
  newA
end
  
