some_var = "false"
another_var = "nil"

case
when some_var == "pink elephant" then puts "Don't think about the pink elephant"
when another_var.nil?
  puts "Question mark in the method name?"
when some_var == false
  puts "Looks like this should be evaluated"
else
  puts "I guess nothing matched... But why?"
end