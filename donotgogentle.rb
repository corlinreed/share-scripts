refrain1 = 'do not go gentle into that good night'
refrain2 = 'rage, rage against the dying of the light'
a_rhyme_lines = ['though wise men at their end know dark is right',
'good men, the last wave by, crying how bright',
'wild men who caught and sang the sun in flight',
'grave men, near death, who see with blinding sight',
'and you, my father, there on the sad height']
b_rhyme_lines =['old age should burn and rave at close of day',
'because their words had forked no lightning they',
'their frail deeds might have danced in a green bay',
'and learn, too late, they grieved it on its way',
'blind eyes could blaze like meteors and be gay',
'curse, bless, me now with your fierce tears, I pray']

puts refrain1
puts b_rhyme_lines[0]
puts refrain2
puts "\n"

4.times { |stanza|
	puts a_rhyme_lines[stanza]
	puts b_rhyme_lines[stanza+1]
	if stanza % 2 == 0
		puts refrain1
	else
		puts refrain2
	end
	puts "\n"
}

puts a_rhyme_lines.last
puts b_rhyme_lines.last
puts refrain1
puts refrain2