# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  result = 0
  if arr == 0
    puts 0
  else
    for i in arr do
      result += i
    end
    puts result
  end
end

def max_2_sum(arr)
  result = 0
  count = 0 
  arr.sort! {|first_num, second_num| second_num <=> first_num}
  arr.each {|num|
    result += num
    count += 1 
    break if count == 2 
  }
  puts result
  
end

def sum_to_n?(arr, n)
  for i in 0..arr.length-2 do
    for j in (i+1)..arr.length-1 do
      result = arr[i] + arr[j]
      if result == n 
        puts "True"
        
      end
      break if result == n
    end
    break if result == n
  end
  if result != n
    puts "False"
  end
end


# Part 2

def hello(name)
  puts "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s == ''
    puts false
  else
    test = s.downcase
    startA = test.start_with?('a')
    startE = test.start_with?('e')
    startI = test.start_with?('i')
    startO = test.start_with?('o')
    startU = test.start_with?('u')
    if startA == true or startE == true or startI == true or startO == true or startU == true 
      puts false 
    else 
      puts true
    end
  end
end

def binary_multiple_of_4?(s)
  if s.match /^(0|^[01]*00)$/ 
    puts true
  else 
    puts false
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

