
def checkout
  print "What is the total cost of the transaction?"
  total_cost = gets.chomp.to_f * 100
  print "How much cash has been given to pay for the transaction?"
  cash_given = gets.chomp.to_f * 100
  change = (cash_given - total_cost)
  puts "The total change needed is #{(change/100)}."

  two_pound_coin = (change/200).to_i
  puts "#{two_pound_coin} x two pound coin"
  new_change = (change - (two_pound_coin * 200))

  one_pound_coin = (new_change/ 100).to_i
  puts "#{one_pound_coin} x one pound coin"
  new_change = (new_change - (one_pound_coin*100))

  fifty_p = (new_change/50).to_i
  puts "#{fifty_p} x 50p coin"
  new_change = (new_change - (fifty_p*50))

  twenty_p = (new_change/20).to_i
  puts "#{twenty_p} x 20p coin"
  new_change = (new_change - (twenty_p*20))

  ten_p = (new_change/10).to_i
  puts "#{ten_p} x 10p coin"
  new_change = (new_change - (ten_p*10))

  five_p = (new_change/5).to_i
  puts "#{five_p} x 5p coin"
  new_change = (new_change - (five_p*5))

  two_p = (new_change/2).to_i
  puts "#{two_p} x 2p coin"
  new_change = (new_change - (ten_p*2))

  one_p = (new_change/1).to_i
  puts "#{one_p} x 1p coin"
  new_change = (new_change - (one_p*1))
end


checkout
