class Animal
	def sound
		puts 'Makes some sound!'
	end
	def breathe
		puts 'Breathes somehow!'
	end
end

class Mammal < Animal
	def breathe
		puts 'Breathe in with lungs'
		puts 'Breathe out with lungs'
	end
	def warm
		puts 'Warm up with body heat'
	end
end

class Reptile < Animal
	def breathe
		puts 'Breathe in with weird lungs'
		puts 'Breathe out with weird lungs'
	end
	def warm
		puts 'Warm up in the sun'
	end
end

class Cat < Mammal
	def sound
		puts 'Meow!'
	end
end

class Dog < Mammal
	def sound
		puts 'Bark!'
	end
end

class Gecko < Reptile
	def sound
		puts 'Fifteen minutes could save you 15% or more...'
	end
end

puts 'The beautiful story about animals.'

puts 'About a Cat, Dog, and Gecko.'
puts 'First, breathing.'

Cat.new.breathe
Dog.new.breathe
Gecko.new.breathe

puts 'next, warming themselves.'

Cat.new.warm
Dog.new.warm
Gecko.new.warm

puts 'and finally, speaking.'

Cat.new.sound
Dog.new.sound
Gecko.new.sound

puts 'The End.'