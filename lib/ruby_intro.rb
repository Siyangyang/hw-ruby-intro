# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # inject and reduce are aliases
  # empty? string->no character array->no item
  # :+ :* are enum symbol
  if arr.empty?
    return 0
  end
  # arr.inject(0){|sum, x| sum + x}
  #arr.inject(:+)
  arr.reduce(:+)
end

def max_2_sum arr
  
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    #max() find the maximum terms
    arr.max(2).reduce(:+)
  end
  
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  else
    arr.each do |i|
      tmp = n - i
      #remaining equal to current element
      if (tmp == i && arr.count(tmp) > 1)
        return true
      #find available element
      elsif (tmp != i && arr.include?(tmp))
        return true
      end
    end
    #No match
    return false
  end    
end

# Part 2

def hello(name)
  "Hello, #{name}" 
end

def starts_with_consonant? s
  # =~ matches the regular expression against a string
  # return offset of string or nil
  #i ignore case
  #^ start of the line
  #$ end of line
  #/pattern/
  #hyphen (-)  an inclusive range of characters
  #Both =~ and match works
  if (s[0] =~ /^[a-z]$/i && /^[aeiou\W]/i.match(s[0]) == nil  )
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  #^ start of the line
  #$ end of line
  #/pattern/
  #* repeat 0 or more times
  #(00) matches
  if s =~ /(^[01]*(00)$|^0$)/
    return true
  end
  return false
  
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  # def isbn
  #   @isbn
  # end
  
  # def price
  #   @price
  # end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
  
    
end
