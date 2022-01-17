puts 'What is your name?'
name = gets
name.chomp!
GREETING = "Welcome, #{name}!"

puts GREETING