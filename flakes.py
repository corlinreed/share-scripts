import turtle
import random
import time

while True:
	wn = turtle.Screen()
	wn.bgcolor("black")
	turtle.setup(1.0,1.0)
	turtle.title('Snowflakes 4 dayz')
	t = turtle.Turtle()
	t.pensize(1)
	t.pencolor("white")
	t.speed(20)

	def triangle(size):
		for x in range(3):
			t.fd(size)
			t.rt(120)

	params = []

	def write_the_list(num):
		for line in range(num):
			angles = [30,30,30,60,90,120]
			distances = [20,60,50,60,60,120]
			max_angle = random.choice(angles)
			max_dist = random.choice(distances)
			direction = random.randint(-max_angle,max_angle)
			distance = random.randint(0,max_dist)
			params.append([direction,distance])

	def pattern():
		for line in params:
			t.rt(line[0])
			t.fd(line[1])
		t.goto(0,0)
		for line in params:
			t.lt(line[0])
			t.fd(line[1])
		t.goto(0,0)
		

	def snowflake():
		for each in range(6):
			t.pendown()
			t.goto(0,0)
			t.seth(0)
			t.rt(each*60)
			pattern()
			t.goto(0,0)
			t.seth(0)

	for each in range(3):
		write_the_list(random.randint(5,15))
		snowflake()
		
	time.sleep(3)
	t.reset()