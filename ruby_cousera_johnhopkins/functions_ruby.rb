# functions are outside the class
# methods belong to a class
# every "functions or methods in Ruby belong to a class"

# parantheses are optional
def simple
  puts "no parens"
end

def simple1()
  puts "yes parens"
end

simple()
# no parens
simple
# no parens
simple1
# yes parens

# no need to declare type
# return keyword is optional
# The last executed line will return a value
def add(one, two)
  one + two
end

def divide(one, two)
  return "I don't think so" if two == 0
  one / two
end

puts add(2,2) #=> 4
puts divide(2,0) #=> I don't think so
puts divide(12, 4) #=> 3

# expressive method names
# can end with ? - predicate methods, ! - Dangerous side effects
def can_divide_by?(number)
  return false if number.zero? #integer has method called 0
  true
end
puts can_divide_by? 3
puts can_divide_by? 0

# default args if no value is passed in, that value is used
def factorial (n)
  return 1 if  n.zero?
   n * factorial(n-1) #ternary operator
end

def factorial_with_default (n = 5)
  n == 0? 1: n * factorial_with_default(n-1)
end

puts factorial 5 #=> 120
puts factorial_with_default #=> 120
puts factorial_with_default(3) #=> 6

#splat * prefix parameter inside method
# Can apply it to middle parameter not just the last

def maximum(one_param, *numbers, another) #numbers parameter becomes one big array
  # variable length parameters passed in
  # become an array
  numbers.max
end

puts maximum("something", 7,32, -4, "more") #=> 32