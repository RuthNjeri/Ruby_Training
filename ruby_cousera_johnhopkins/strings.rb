# single quote strings are literal. Show everything as is
# Double quoted strings interpret special characters \n
# "" allow string interpolation

single_quoted = 'ice \n it\'s him'
double_quoted = "ice \n it\'s him"

puts single_quoted # => ice \n it's him
puts double_quoted # => ice
                    # =>  it's him
# interpolation
def multiply (one, two)
  "#{one} multiplied by #{two} equals #{one * two}"
end

puts multiply(4,5) #=> 4 multiplied by 5 equals 20

my_name = " Waiganjo"
puts my_name.lstrip.capitalize #=>Waiganjo without the space infront of it
p my_name #=> "Waiganjo"
my_name.lstrip! #=> (destructive)removes the leading space
my_name[0] = 'My' # replace first character
puts my_name #=> Myaiganjo

# using a Quote
cur_weather = %Q{It's a hot day outside
                Grab your umbrellas...} # allows spanning multiple lines
                #acts like a ""
cur_weather.lines do |line|
  line.sub! 'hot', 'rainy' #substitute hot with rainy
  puts "#{line.strip}"
end
#=> It's a rainy day outside
#=> Grab your umbrellas...

#symbol - highly optimized strings
# convert symbol to string .to_s
# convert string to symbol .to_sym
:foo














