# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# => CONPUTE (5*num*num + 4) and set it equal to n1
# => SET n2 to n1 - 8
# => IF either or both of n1 and n2 are perfect square
# =>   THEN RETURN true
# =>   ELSE RETURN false


# 3. Initial Solution

def is_fibonacci?(num)
	n1 = (5*num*num + 4)
	n2 = n1 - 8
	is_perfect_square?(n1) || is_perfect_square?(n2)
end

def is_perfect_square?(num)
	sqrt = Math.sqrt(num)
    sqrt.is_a? Integer
end



# 4. Refactored Solution

def is_fibonacci?(num)
	last_two = [0, 1]
	while num > last_two.last
		x, y = last_two.pop(2)
		last_two.push(y, x+y)
	end
	return num == last_two.last ? true : false  
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert 
	raise "Assertion Failed!" unless yield
	puts true
end

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

assert { is_fibonacci?(random_fibonacci) == true }
assert { is_fibonacci?(8670007398507948658051921) == true }
assert { is_fibonacci?(random_fibonacci+100) == false }
assert { is_fibonacci?(927372692193078999171) == false }

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# => First of all, I had to look up what exactly fibinacci sequence is and how to 
#    verify a number if it's a fibonacci number.
# What questions did you have while coding? What resources did you find to help you answer them?
# => How to determine if a number is a perfect suare. I got stuck that so I started looking 
#    online for different ideas.
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# => I think I made the concept of fibonacci sequence too complicated in my head and
#    ended up overwhelming myself.
# Did you learn any new skills or tricks?
# => Since I could not figure out how to determine a perfect square number, I ended up
#    finding a different approach online. Although I modified it a bit, this refactored
#    was highly inspired by somebody else's work. But it's simple and easy to understand.
# How confident are you with each of the Learning Competencies?
# => I feel ok but not confident since I couldn't solve the challenge entirely on my own.
# Which parts of the challenge did you enjoy?
# => Learning different ways to approach a challenge.
# Which parts of the challenge did you find tedious?
# => Trying to deal with perfect square was intence!