puts 'Pig Latinator'
target = gets
words = target.chomp!.split(/ /)
words.each {|word| 
	if ['a','e','i','o','u'].include? word[0] then print word + 'ay '
	else print word.reverse.chop!.reverse + word[0] + 'ay '
	end
}