# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0) { |a, b| a + b }
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_index do |i|
    if arr[i + 1] && i !=arr.length - 1
      arr[i + 1..arr.length - 1].each do |x|
        if (arr[i] + x == n)
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s[0] =~ /[[:alpha:]]/) 
    ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].each do |x| 
      if s[0] == x
        return false
      end
    end
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  elsif s =~ /^[0-1]*00$/ 
    return true
  end
  return false
end

# Part 3
class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(num, cost)
    if num == ""
      raise ArgumentError.new("ISBN cannot be empty")
    elsif cost <= 0
      raise ArgumentError.new("Cost must be greater than 0")
    else
      @isbn = num
      @price = cost
    end
    
  end
end

