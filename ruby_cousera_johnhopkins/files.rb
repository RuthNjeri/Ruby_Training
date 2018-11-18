File.foreach('test.txt') do |line|
  puts line
  p line
  p line.chomp # removes new line character
  p line.split # splits the word into an array
end

# reading from non existent file
begin
  File.foreach('do_not_exist.txt') do |line|
    puts line.chomp
  end

rescue Exception => e
  puts e.message
  puts "Let's pretend this did not happen"
end

# Alternative
if File.exist? 'test.txt'
  File.foreach('test.txt') do |line|
    puts line.chomp
  end
end

# writing to a file
 File.open("test.txt", "w") do |file|
   file.puts "One line"
   file.puts "Another"
 end
#files are closed at the end of the block

#reading environment variables from the OS
puts ENV["gst"]
