require_relative 'prime_numbers'
require 'rspec'

describe "is_prime?" do
  it "should return true if the number is a prime" do
    expect(is_prime?(3)).to be(true)
    expect(is_prime?(5)).to be(true)
    expect(is_prime?(7)).to be(true)
  end

  it "should return false if the number isn't a prime" do    
    expect(is_prime?(1)).to be(false)
    expect(is_prime?(4)).to be(false)
    expect(is_prime?(6)).to be(false)
  end
end


describe "prime_numbers" do
  before(:all) do
    @mixed_numbers = [1,2,3,4,5,6,7,8,9,10000,35,21]
    @even_numbers = [4,6,8]
  end

  it "should return an array" do
    expect(prime_numbers(@mixed_numbers)).to be_an_instance_of(Array)

  end

  it "should return an array including only prime numbers" do
    expect(prime_numbers(@mixed_numbers)).to contain_exactly(2,3,5,7)
  end

  it "should return an empty array if there are no prime numbers" do
    expect(prime_numbers(@even_numbers)).to be_empty
  end

end

