# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  # YOUR CODE HERE
  # arr.reduce(0) {|sum,num| sum + num} // here we use two variables sum and num. sum is the total sum and num is each value in the enumerable
  # arr.reduce(0, :+) //reduce and inject are interchangable
  
  arr.inject(0, :+) #the 0 sets the initial value to zero in case of empty array
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0,:+) # .max(n) returns the n maximum elements in ruby. then we sum that array using reduce
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # two_number = arr.combination(2).detect {|a,b| a + b == n} //returns the actual combination if it exists or returns nill
  !!arr.combination(2).detect {|a, b| a + b == n} #the two negations are a ruby convention to coerce a needed boolean
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.match? (/\A(?=[^aeiou])(?=[a-z])/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.match? (/^[10\s]*[00\s]$/)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn 
    @price = price
    
    # Handles Requirement of Non Empty ISBN
    raise ArgumentError.new(
      "Please Enter ISBN which is Non-Empty!"
      ) if isbn.size < 1
    
    #Handles Requirement of Non Zero and Positive Price
    raise ArgumentError.new(
      "Please Enter a valid price for the product which is a positive number!"
      ) if price <= 0
  end
  
  #Getters for ISBN and Price
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  #Setters for ISBN and Price
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$" + sprintf("%.2f", @price)
  end

end
