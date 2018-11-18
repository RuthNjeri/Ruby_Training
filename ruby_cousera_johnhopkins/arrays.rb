# collection of object references
# can be indexed with negative numbers or ranges
# can use %w{str1 str2} for string array creation
# can be of heterogeneous type
het_array = [1, "two", :three]
puts het_array[1] #=>two
arr_words = %w{what a great day today!}
puts arr_words[-2] #=> day
puts "#{arr_words.first} - #{arr_words.last}" #=> what - today!
p arr_words[-3, 2] #=> ["great", "day"]
p arr_words[2..4] #=> ["great", "day", "today!"]
puts arr_words.join(',') #=> what,a,great,day,today!

# modify arrays
# push or <<
# stack LIFO
stack = []; stack << "one"; stack.push ("two")
puts stack.pop #=> two

# queue FIFO
queue = []; queue << "one"; queue.push "two"
puts queue.shift #=> one

a = [5,3,4,2].sort!.reverse!
p a #=> [5,4,3,2] (actually modifies the array)
p a.sample(2) #=> 2 random elements

a[6] = 33 #[5, 4, 3, 2, nil, nil, 33]
p a

# array methods
a = [1,2,3,4,5,6,7,8,10]
a.each {|num| print num} #=>1234567810
puts #=>prints new line

new_arr = a.select {|num| num > 4}
p new_arr #=>5, 6, 7, 8, 10]
new_arr = a.select {|num| num < 10}
            .reject{ |num| num.even?}
p new_arr #=>[1, 3, 5, 7]

new_arr = a.map {|x| x * 3}
p new_arr #=>[3, 6, 9, 12, 15, 18, 21, 24, 30]





