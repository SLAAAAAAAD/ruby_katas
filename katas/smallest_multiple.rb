# from project euler, problem 5
#
#      "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#       What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?"
#
# Fill in the method to find the smallest number that is evenly divisible by all numbers up to and including an upper_bound
# you may require 'prime' and use the prime class if you want

# The solution is to take the product of the highest power less than or equal to the upper bound of each prime less than or equal to the upper bound
# example: upper bound = 32
#   primes less than or equal to 32:
#     2, 3, 5, 7, 11, 13, 17, 19, 23, 29
#   highest power of each, still less than or equal to 32:
#     2^5, 3^3, 5^2, 7^1, 11^1, 13^1, 17^1, 19^1, 23^1, 29^1
#   which yields:
#     32 * 27 * 25 * 7 * 11 * 13 * 17 * 19 * 23 * 29 = 144,403,552,893,600
#   144,403,552,893,600 is the smallest number that is evenly divisible by all integers from 1 to 32, inclusive.

require 'prime'
def smallest_multiple(upper_bound)
  primes = []
  Prime.each(upper_bound) do |prime|
    primes << highest_power(prime, upper_bound)
  end
  product = 1
  while primes.length > 0
    product *= primes.pop
  end
  product
end

def highest_power(n,max)
  p = n
  while (p * n) <= max
    p *= n
  end
  p
end