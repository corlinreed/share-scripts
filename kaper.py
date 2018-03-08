#Kaperskar Constant Calculator
#I first coded this as an extension for the MNFT program
#But I like it enouch to make it its own thing

def sort_to_list(num):
	digits = []
	strung = str(num)
	for n in strung:
		digits.append(int(n))
	digits.sort()
	return(digits)

def reverse(thing):
	try:
		thing.reverse()
		return(thing)
	except:
		return(None)

def makenum(thing):
	num = 0
	pwr = 0
	thing.reverse()
	for digit in thing:
		num = num + (digit * (10**pwr))
		pwr = pwr + 1
	return(num)


def kaper(num):
	forward = sort_to_list(num)
	backward = reverse(sort_to_list(num))
	new = makenum(backward) - makenum(forward)
	return(new)

def kaper_p(num):
	forward = sort_to_list(num)
	backward = reverse(sort_to_list(num))
	print(backward)
	print(forward)
	new = makenum(backward) - makenum(forward)
	print(new)
	return(new)

def kaper_to_end(num):
	last = num
	next_to_last = 0
	last = kaper_p(num)
	while last != next_to_last:
		next_to_last = last
		last = kaper_p(last)

#ignition sequence start

print('A program to find the Kaperskar Constant.')
value = input('Enter an integer (four digits is probably best):\n')
while True:
	value = input()
	kaper_to_end(value)
	print('\n')
