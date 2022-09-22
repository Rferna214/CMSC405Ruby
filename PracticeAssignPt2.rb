# 1. Write a block form if-else that tests if an integer is even and
# outputs 'Integer is even.', if the integer is even, else it outputs
# 'Integer is odd'.

x = 4

if x.even?
    "Integer is even. "
else
    'Integer is odd. '
end



# 2. Write a function named odd_or_even that takes an integer as a parameter 
# and returns the String 'Integer is even.', if the integer parameter is even, else 
# it returns 'Integer is odd'.

def odd_or_even x
    if x.even?
        "Integer is even. "
    else
        'Integer is odd. '
    end
end
# 3. Call odd_or_even passing an even number and output the return from the
# function

puts odd_or_even 4

# 4. Call odd_or_even passing an odd number and output the return from the
# function

puts odd_or_even 5

# 5. Write a function named odd_or_even that returns a code block. The code
# block should take an integer as a parameter and return the String 'Integer
# is even.', if the integer parameter is even, else it should return 'Integer is odd'.

def odd_or_even 
    lambda do |x|
        while power.!= 0
            ans = number ** power
            power -= 1
            print ans, "\n"
            break
        end
    end
end

# 6. Write the code to call odd_or_even and store the code block it returns in 
# a variable named p.
p = odd_or_even

# 7. Write the code to execute the code block contained in p for an even integer
# and output the code block's return.

puts p.call 4

# 8. Write the code to execute the code block contained in p for an odd integer
# and output the code block's return.

puts p.call 4

# 9. Who created the Ruby programming language?

# Yukihiro Matsumoto

# 10. Explain how you interact with the Ruby programming language?

# Ruby is platfrom independent so you can run it on any platfrom  
# as long as the platform dependent Ruby Interpreter installed.
# You need to download rubys language library aswell
# it is interpreted as a scripting language so code is executed at runtime by an Ruby Interpreter
# You can find the Ruby API online and you can use many IDEs for ruby, One of them
# being vscode w/ Ruby extensions

# 11. What is Ruby's programming model?

# Object oriented

# 12. What is Ruby's typing model?

# Strongly typed and Dynamically typed

# 13. Explain what it means to be weakly (or loosely) typed?

# the type of a variable (or object) can change  depending on the 
# context in which it’s being used.

# 14. Explain what it means to be statically typed?

# The type of every  variable (or object) is 
# enforced at compile time.

# 15. Write the full path to where Ruby's language libraries exist on your laptop.

# C:\Ruby30-x64\lib\ruby\3.0.0

