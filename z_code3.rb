puts "Z Encoder/Decoder v1.3"
puts "by Corlin Reed\n\n"

puts "Encode as follows:"
puts "z=1,y=2,x=3 etc\n\n"

puts "Encrypt (e) / decrypt (d)?"
choice = gets
if choice.chomp == "e" then
	puts 'Enter plaintext:'
	p_text = gets.upcase
	e_text = p_text.chomp!.chars
	e_text.each do |letter|
		letter = letter.ord - 64
		letter = 27 - letter
		if letter == 59
			print '  '
		else
			print letter.to_s + ' '
		end
	end
	puts "\n\nPress Enter to exit."
	any_key = gets
elsif choice.chomp == 'd' then
	puts 'Enter ciphertext (one number at a time):'
	#message = []
	number = 1
	while true
		number = gets.to_i
		number = 27 - number
		number = number + 64
		number = number.chr
		puts number
	end
	#puts message
	puts "\n\n"
end
