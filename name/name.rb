puts 'What is your first name?'
fname = gets
puts 'What is your last name?'
lname = gets

fname.chomp!
lname.chomp!
GREETING = "Welcome, #{fname} #{lname}!"

puts GREETING 



