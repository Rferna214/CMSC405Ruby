# 1. Write the lines of code that use a block-form while loop to compute
# the power of a number. The power of a number tells you how 
# many times to use the number in a multiplication statement; for example,
# 2 to the 0 power is 1
# 2 to the 1st power is 2 
# 2 to the 2nd power is 2 * 2 
# 2 to the 3rd power is 2 * 2 * 2
# 2 to the 4th power is 2 * 2 * 2 * 2
# 2 to the 5th power is 2 * 2 * 2 * 2 * 2

number = 2
power = 3
ans = 0
while power.!= 0
    ans = number ** power
    power -= 1
    print ans, "\n"
    break
end


# 2. Write a function named gen_power that computes and returns
# the power of a number. It must have two integer input parameters; 
# the first must contain the number and the second must contain the power.


def gen_power number, power
    while power.!= 0
        ans = number ** power
        power -= 1
        print ans
        break
    end
end

# 3. Write the code to call the gen_power function and output the 
# return from the function.

puts gen_power 4, 2



# 4. Write a function named gen_power that returns a code block. The code
# block should compute and return the power of a number. The code block
# must have two integer input parameters; the first must contain the number 
# and the second must contain the power.

def gen_power number 
    lambda do |power|
    while power.!= 0
        ans = number ** power
        power -= 1
        print ans
        break
    end
    end
end

# 5. Write the code to call the gen_power function and store the code 
# block it returns in a variable named p.
p = gen_power 4

# 6. Write the code to execute the code block contained in p 
# and output the code block's return.
puts p.call 3

# 7. Explain how you interacted with the Ruby programming language? Your
# response to this question must be at least 1 full paragraph (50 words).

# Ruby is platfrom independent so you can run it on any platfrom  
# as long as the platform dependent Ruby Interpreter installed.
# You need to download rubys language library aswell.
# it is interpreted as a scripting language so code is executed at runtime by an Ruby Interpreter.
# You can find the Ruby API online and you can use many IDEs for ruby, One of them
# being vscode w/ Ruby extensions.

# 8. Which Ruby module provides a whole set of I/O related methods?

# Ruby provides a whole set of I/O related methods in the Kernel module.

# 9. What is Ruby's typing model?

# Strongly typed and Dynamically typed

# 10. What syntax must you use to reference a variable value within in a String?
# puts 'Your first name is #{fname}'

# Bonus (5 points). Explain what it means to be statically typed?

# The type of every  variable (or object) is 
# enforced at compile time. 
# For example you wont know if you have a syntax or any error until you run your code