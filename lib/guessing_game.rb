def guessing_game()
  def guess_again(count, randNum)
    count = count + 1
    puts "guess again"

    guess = gets.chomp.to_i

    if guess > randNum
      puts "the number is lower than #{guess}"
      guess_again(count, randNum)
    elsif guess < randNum
      puts "the number is higher than #{guess}"
      guess_again(count, randNum)
    elsif guess == randNum
      puts "You got it right your a wizard. It only took you #{count} guesses"
    else
      puts "not a valid number"
    end
  end
  randNum = rand(1..100)
  puts "guess a number between 1 and 100"
  guess = gets.chomp.to_i
  count = 1
  
  if guess < randNum
    puts "the number is higher than #{guess}"
    guess_again(count, randNum)
  elsif guess > randNum
    puts "the number is lower than #{guess}"
    guess_again(count, randNum)
  elsif guess == randNum
    puts "You got it right your a wizard It only took you #{count} guess"
  else
    puts "not a valid number"
  end
end

guessing_game()