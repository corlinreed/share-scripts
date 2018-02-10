puts "What would you like your US Senator from the Great State of Montana to do?"
verb = gets.to_s.chomp!
last_name = verb.capitalize + 'er'
puts "Please give a warm welcome to US Senator John #{last_name}"
