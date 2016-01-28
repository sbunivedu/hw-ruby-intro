# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|item| 
    sum += item
  }
  sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.size == 1
    return arr.first
  else 
    new_arr = arr.sort
    return new_arr[-1]+new_arr[-2]
  end
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  elseif arr.count == 1
    return false
  else
    result = false
    arr.combination(2).each do |comb| 
       result = true if sum(comb) == n
    end
    result
  end
end

# Part 2

def hello(name)
  "Hello, "<<name
end

def starts_with_consonant? s
  (s =~ /^[a-zA-Z]/) && (s =~ /^[^AOEIU].*/i)
end

def binary_multiple_of_4? s
  if (s == '') 
    return false
  end
  if (s =~ /^[01]*$/) && (s.to_i(2) % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
       raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "%s%.2f" % ['$', @price]
  end
end
