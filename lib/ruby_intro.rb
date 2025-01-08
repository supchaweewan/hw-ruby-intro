# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  result = 0
  if arr.empty? == true
    return 0
  else
    for i in arr do
      result += i
    end
    return result
  end
end

def max_2_sum(arr)
  result = 0
  if arr.length < 2
    if arr.empty? == true
      return 0
    else
      return arr[0]
    end
  
  else
    
    result = arr.sort[-1] + arr.sort[-2]
  
    return result
  end
end

def sum_to_n?(arr, n)
  for i in 0..arr.length-2 do
    for j in (i+1)..arr.length-1 do
      result = arr[i] + arr[j]
      if result == n 
        return true
      end
      break if result == n
    end
    break if result == n
  end
  if result != n
    return false
  end
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s == ''
    return false
  else
    test = s.downcase
    startA = test.start_with?('a')
    startE = test.start_with?('e')
    startI = test.start_with?('i')
    startO = test.start_with?('o')
    startU = test.start_with?('u')
    if startA == true or startE == true or startI == true or startO == true or startU == true 
      return false
    elsif s[0].match?(/^[b-df-hj-np-tv-z]/i) == false
      return false 
    else 
      return true
    end
  end
end

def binary_multiple_of_4?(s)
  if s.empty? || s.match?(/[a-zA-Z\W3-9*]/)
    return false
  elsif s == "0"
    return true
  elsif s.to_i % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must not be zero or lower" if price <= 0
    @isbn = isbn
    @price = price.to_f 

  end

  def price_as_string
    puts "$#{@price}"
  end
end

