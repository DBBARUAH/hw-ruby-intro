# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = arr.inject(0,:+)
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  max_sum= arr.max(2).reduce(0, :+)
  return max_sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
	return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
