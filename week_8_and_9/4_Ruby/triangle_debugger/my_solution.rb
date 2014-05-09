# U3.W8-9: Triangle Debugger


# I worked on this challenge with Jake Persing.


# 1. Original Solution


def valid_triangle?(a, b, c)
  sum = 0
  if a != 0 && b != 0 && c != 0
    return true if a==b && b==c
    if a >= b 
      largest = a 
      sum += b 
    else 
      largest = b 
      sum += a 
    end
    if c > largest 
      sum += largest 
      largest = c 
    else 
      sum += c
    end
    if sum > largest
      return true
    else 
      return false
    end
  else 
    return false
  end
end


p valid_triangle?(4,2,4)

# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
## valid_triangle? expects 3 arguments
# * what is the exact line number the error is appearing?
## Line 9
# * before you fix the bug, what do you think is causing the error?
## Valid triangle has too many arguments

# --- Bug 2 ---
# * what is the exact description of the error?
## valid_trangle? returns true for an eauilateral triangle
# * what is the exact line number the error is appearing?
## Line 13
# * before you fix the bug, what do you think is causing the error?
## Create a condition statement to check if a, b, c are the same

# --- Bug 3 ---
# * what is the exact description of the error?
## valid_triangle? returns false if any of the arguments are 0
# * what is the exact line number the error is appearing?
## Line 20
# * before you fix the bug, what do you think is causing the error?
## || needs to be changed to && in the conditional statement

# --- Bug 4 ---
# * what is the exact description of the error?
## valid_triangle? returns true for an isoceles tringle
# * what is the exact line number the error is appearing?
## Line 33
# * before you fix the bug, what do you think is causing the error?
## 


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  if a != 0 && b != 0 && c != 0
    return true if a==b && b==c
    if a + b > c && a + c > b && b + c > a
      return true
    else
      return false
    end
  else 
    return false
  end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
  raise ArgumentError.new("Assertion Failed") unless yield
end

assert{method(:valid_triangle?).arity == 3}
assert{valid_triangle?(4,4,4) == true}
assert{valid_triangle?(4,2,4) == true}
assert{valid_triangle?(0,2,4) == false}
assert{valid_triangle?(3,4,5) == true}
assert{valid_triangle?(50,70,200) == false}



# 5. Reflection 