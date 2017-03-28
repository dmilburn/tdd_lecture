def is_prime?(number)
  return false if number == 1
  return true if number == 2
  (2...number).each do |n|
    return false if number % n == 0
  end
  return true
end

def prime_numbers(numbers)
  prime_numbers = []
  numbers.each do |number|
    if is_prime?(number)
      prime_numbers << number
    end
  end
  prime_numbers
end