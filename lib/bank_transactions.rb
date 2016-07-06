def init(balance)

  puts "What would you like to do? (deposit, withdraw, check_balance)"
  
  choice = gets.chomp

  if choice == "deposit"
    puts "enter the amount you wish to deposit"
    amount = gets.chomp.to_i

    deposit(amount, balance)

  elsif choice == "withdraw"
    puts "enter the amount you wish to withdraw"
    amount = gets.chomp.to_i

    withdraw(amount, balance)

  elsif choice == "check_balance"
    puts balance

    puts "Are you done? (yes, no)"
    done = gets.chomp
    if done == "yes"
      return
    else
      init(balance)
    end

  else
    puts "not a valid choice"
  end
end

def deposit(amount, balance)
  new_amount = balance + amount

  puts "You deposited #{amount} and your new balance is #{new_amount}"

  puts "Are you done? (yes, no)"
  done = gets.chomp

  if done == "yes"
    return
  else
    init(new_amount)
  end
end

def withdraw(amount, balance)
  new_amount = balance - amount

  puts "You withdrew #{amount} and your new balance is #{new_amount}"

  puts "Are you done? (yes, no)"
  done = gets.chomp

  if done == "yes"
    return
  else
    init(new_amount)
  end
end

init(5000)