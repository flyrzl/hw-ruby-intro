# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  res = 0
  arr.each do |e|
    res += e
  end
  return res
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return arr.combination(2).any? {|a, b| a + b == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  else
    return s.match(/\A(?=[^aeiou])(?=[a-z])/i)
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[01]0*1*/
    s = "0b" + s               
    s = Integer(s)                    
    if s % 4 == 0 
      return true 
    end 
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f",@price)
  end

  attr_accessor:isbn
  attr_accessor:price
end
