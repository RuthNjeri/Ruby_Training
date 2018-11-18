# datatype to express sequences
# two dots 1..2 end is included
# three dots 1...2 end is excluded
# cam be converted to arrays with to_a
# used for conditions and intervals
some_range = 1..3
puts some_range.max #=> 3
puts some_range.include? 2 #=> true

puts (1...10) === 5.3 #=>true
puts ('a'...'r') === "r" #=> false

p ('k'...'z').to_a.sample(2) #=> ["m", "p"] or other two elements

age = 55
case age
  when 0..12 then puts "still a baby"
  when 13..99 then puts "teenager at heart"
  else puts "you are getting grey"
end
#=> teenager at heart