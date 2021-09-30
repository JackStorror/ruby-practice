print "Hi, please enter your name? "
name = gets.chomp
    if name.include?("S")
      puts name.upcase
    else
      puts "Hi, #{name}"
    end