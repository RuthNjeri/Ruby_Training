# if, unless, elsif, else, until, while, for
# no paranthesis needed
# use 'end' to close control block

a = 5 #declare variable

  if a == 3
    puts "a is 3"
  elsif a == 5
    puts "a is 5"
  else
    puts "a is not 3 or 5"
  end
#  => "a is 3"

  unless a == 6 # prints it out if it is not equal to(if not)
    puts "a is not 6"
  end

  a = 10
  while a > 9
    puts a
    a -= 1 # a = a - 1
  end
#   => 10
  a = 9
  until a >= 10
    puts a
    a += 1
  end
#   => 9

# if modifier form (lets you print in a one liner)
a = 5
b = 0
puts "one liner" if a == 5 and b == 0 #=> One liner

# while modifier form
times_2 = 2
times_2 *= 2 while times_2 < 100
puts times_2
# => 128

times_2 = 2
while times_2 < 100
  puts times_2
  times_2 *= 2
end
# => 2
# => 4
# => 8
# => 16
# => 32
# => 64


# false and nil objects are false
puts "no way - false is false" if false # => NOTHING PRINTED
puts "no way - nil is false" if nil # => NOTHING PRINTED
# everything else is true
puts "0 is true" if 0 # => 0 is true
puts "false is true ?" if "false" # => false is true ?
puts "empty string is true" if "" # => empty string is true
puts "nil is true?" if "nil" # => nil is true

# triple equal, check if the condition exists in the set
if /sera/ === "cousera" # does this regular expression match the string literal "cousera"
  puts "Triple Equals"
end
#  => "Triple Equals"

if "cousera" === "cousera" # triple equals delegates to a double equal
  puts "also works"
end
# => also works

if Integer === 21
  puts "21 is an integer"
end
# => 21 is an integer

# case expressions has two flavors
# similar to a series of if statements
# specify a target next to case and each when clause is compared to target.
# === is called the case equality operator because it is used in precisely this case.
# first flavor
age = 21
case  #1ST FLAVOR
  when age >= 21
    puts "You can buy a drink"
  when 1 == 0
    puts "written by a drunk programmer"
  else
  puts "default condition"
end
# SECOND FLAVOR
name = 'Fisher'
case name #uses the tripple equal operator to compare it to the name target
  when /fish/i then puts "something is really fishy here"
  when 'Smith' then puts "Your name is Smith"
  else puts "shame"
end
# => Something is fishy here
#FOR LOOP, hardly used preference given to each and times
for i in 0..2 # 0..2 is a datatype called range
  puts i
end
# => 0
# => 1
# => 2


