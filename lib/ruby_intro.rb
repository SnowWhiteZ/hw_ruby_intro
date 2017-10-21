# When done, submit this entire file to the autograder.
#baijiameng
# Part 1

def sum arr
  # YOUR CODE HERE
  m = 0;
  if !arr.empty? 
    arr.each do |i|
      m+=i;
    end
  end 
  return m;
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size ==1
    return arr[0]
  else
      arr = arr.sort.reverse
      return (arr[0] + arr[1])
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<=1
    return false
  end
  
  for i in 0...arr.size
    for j in (i+1)...arr.size
      temp=arr[i]+arr[j]
      if (temp==n) then return true end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

#using rex:
def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[bcdfghjklmnpqrstvwxyz]/i
    return true
  end
  false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=~/^[01]+/
    if Integer(s)%4==0
      return true
    end
  end
  return false
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if(isbn.size==0||price<=0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    str = format("%0.2f",@price)
    return "$#{str}"
  end
  


end
