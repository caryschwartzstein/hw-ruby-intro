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
# # YOUR CODE HERE
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
  
  def price_as_string
#     # turn price to string, save as string
#     # for loop thru string to find decimal index
#     # based on length determine if case
    p_str = @price.to_s
    if p_str =~ /^([0-9]*)\.([0-9]{3,})$/ #3 or more num after decimal
      return "$#{$1}.#{$2[0..1]}"
    elsif p_str =~ /(^[0-9]*)\.([0-9]{2})$/ #2 num after decimal
      return "$#{$1}.#{$2}"
    elsif p_str =~ /^([0-9]*)\.([0-9]{1})$/ #1 num after decimal
      return "$#{$1}.#{$2}0"
    elsif p_str =~ /^([0-9]*)$/ #No decimal
      return "$#{$1}.00"
    end
    
    # p_str = price.to_s
    # p_str.each_index do |i|
    #   if p_str[i] == "."
    #     first = p_str[0..i - 1]
  end
    
  
end

