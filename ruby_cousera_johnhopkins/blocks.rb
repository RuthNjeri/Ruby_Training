#chunks of code being executed
# passed between curly braces({}) or keywords do and end
# Passed into a method as a last parameter
# curly braces are used in a single line
# do and end spans the block in multiple lines
# often used as iterators

1.times { puts "Hello world!"}
# => Hello world !

2.times do |index|
  if index > 0
    puts index
  end
end
# => 1

2.times {|index| puts index if index > 0}

#configure block in method
#implicit:
# use block_given? to check if block was passed
# use yield to call the block

def one_times_implicit
  return "No block" unless block_given?
  yield
end

puts one_times_implicit {print "Hello"} # => Hello
puts one_times_implicit #=> No block

#explicit
# Use & in front of last parametr
# use call method to call the block
def two_times_explicit (&i_am_a_block)
  return "No block" if i_am_a_block.nil?
  i_am_a_block.call
  i_am_a_block.call
end

puts two_times_explicit #=> No block
two_times_explicit {puts "Hello"} #=> Hello #=> Hello

# blocks are code passed into methods






