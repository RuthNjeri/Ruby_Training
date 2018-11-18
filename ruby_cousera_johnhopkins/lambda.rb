a = (1..10).to_a
#double it
a = a.map { |x| x*2 }

puts a

rs = (1..10).to_a
areas = rs.map {|r| Math::PI * r**2 }

# using a lamda
circle_area = -> r { Math::PI * r**2}
areas = rs.map(&circle_area)