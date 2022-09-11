# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |i|
    sum+=i
    end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length==0
    return 0
  elsif arr.length==1
    return arr[0]
  else
    # sort in ascending
    sorted=arr.sort
    # Addition of last two elements gives max2sum
    return sorted[-1]+sorted[-2]
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length<=1
    return false
  else
    # Use two pointers and return true if sum = n
    for i in 0..(arr.length-1)
      for j in i+1..(arr.length-1)
        if arr[i]+arr[j]==number
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ("Hello, "+ name)
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  # First check if alpha string
  if string =~/^[A-Za-z]/
    # Return true if string doesn't start with vowels
       if not string =~/^[AEIOUaeiou]/
         return true
       else
         return false
       end 
  else
       return false
  end 
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string=="0"
    return true
  # First check if binary string
  elsif not string =~/^[01]*/
    return false
  else
    # 4 multiple ends with two 0s
    return string =~/^[01]*00$/
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  # constructor
  def initialize(isbn,price)
    raise ArgumentError if isbn == ""
    raise ArgumentError if price <= 0
    @isbn =isbn
    @price =price
  end

  # isbn getter
  def isbn
    @isbn
  end

  # isbn setter
  def isbn=(isbn)
    @isbn=isbn
  end

  # price getter
  def price
    @price
  end

  # price setter
  def price=(price)
    @price=price
  end

  # price formatter
  def price_as_string()
    return format('$%.2f',@price.round(2)).to_s()
  end
  
end
