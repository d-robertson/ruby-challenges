puts "What calculation would you like to do? (add, sub, mult, div)"

choice = gets.chomp

puts "What is your first number selection?"

num1 = gets.chomp.to_i

puts "What is your second number selection?"

num2 = gets.chomp.to_i

if choice == "add"
  total = num1 + num2
elsif choice == "sub"
  total = num1 - num2
elsif choice == "mult"
  total = num1 * num2
elsif choice == "div"
  total = num1 / num2
else
  puts "not a valid choice"
end

puts total