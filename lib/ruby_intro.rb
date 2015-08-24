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
    for a in arr
      for b in arr
        if a != b && a+b == n
          result = true
          return result
        end
      end
    end
    result
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
