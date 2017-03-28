def is_prime?(number)
  return false if number == 1
  return true if number == 2
  (2...number).each do |n|
    return false if number % n == 0
  end
  return true
end

def prime_numbers(numbers)
  numbers.select do |number|
    is_prime?(number)
  end
end