def is_prime?(number)
  return false if number == 1
  return true if number == 2
  (2...number).none? do |n|
    number % n == 0
  end
end

def prime_numbers(numbers)
  numbers.select do |number|
    is_prime?(number)
  end
end