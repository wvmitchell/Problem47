load "helpers.rb"

puts "Hello, this program will find the first four consecutive numbers that have exactly 4 distinct prime factors"

i=1
while true
  if primes(get_factors(i)).length == 4
    if primes(get_factors(i+1)).length == 4
      if primes(get_factors(i+2)).length == 4
        if primes(get_factors(i+3)).length == 4
          puts i, i+1, i+2, i+4
          break
        else
          i += 1
          next
        end
      else
        i += 1
        next
      end
    else
      i += 1
      next
    end
  else
    i += 1
  end
end

