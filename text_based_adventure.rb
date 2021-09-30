=begin
The user is told they're facing forward and can type 'forward', 'left', or 'right'.
If the user enters 'right', they die (goblin).
If the user enters 'left', they die (werewolf).
If the user enters 'forward', they're told they live, and can move again.
If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.
If the user enters 'right', they die (goblin).
If the user enters 'left', they die (werewolf).
If the user enters 'forward', they're told they won and the game exits.
If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.    
=end
print "Welcome to Camelot, pick your fate. Proceed forward, left or right? "
fate = gets.chomp
loop do
if fate.include?("left")
    puts "Mwahaha, you've been eaten by a werewolf"
    break
elsif fate.include?("right")
    puts "Mwahaha, Goblin's have got you"
    break    
elsif fate.include?("forward")
  puts "Congratulations, you must now pick your fate once more - forward, left or right? "
  secondround = gets.chomp
  loop do
  if secondround.include?("left")
    puts "Werewolf dinner you are!"
    return
  elsif secondround.include?("right")
    puts "The goblins got you this time!"
    return
  elsif secondround.include?("forward")
    puts "YOU MADE IT, CONGRATULATIONS!"
    return
  else
    puts "Invalid choice, try again?"
    secondround = gets.chomp
  end
  end
else 
  puts "Invalid fate, try again?"
  fate = gets.chomp
end
end