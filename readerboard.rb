def readerboard(setting)
	case setting
	#when 0
		#"?"
	when 1
		"RED LINE"
	when 2
		"BLUE LINE"
	when 3
		"GREEN LINE"
	when 4
		"PURPLE LINE"
	when 5
		"GOLD LINE"
	#when ?
		#"SPECIAL SHUTTLE"
	when 12
		"OUT OF SERVICE"
	when 20
		"DRIVER IN TRAINING"
	end
end

drivers_choice = gets.to_i
display = readerboard(drivers_choice)
puts display