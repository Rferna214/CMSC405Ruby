# code blocks are chunks of code between either curley braces or a do-end
# {puts 'Hiya there kiddo!'}

# do
#     puts 'Hiya there kiddo!'
# end

# Naked code blocks will generate a syntax error. Code blocks can't exist on
# their own. They must be passed to methods or returned by methods.

# This is how you pass a curly braces code block to a method.
4.times {puts 'Hiya there kiddo!'}

# This is how you pass a do-end code block to a method.
3.times do
    puts 'Hiya there kiddo!'
end

# Curley braces are typically used for single-line code blocks.
# Do-end is used for multi-code blocks.
c = [1,2,3]
2.times do
    puts c.first
    puts c.last
    puts c.length
    puts c.pop
end

# This method is capable of executing a code block. It uses the ruby yield method.
# The Ruby yield method can be used to execute a code block
def call_block
    puts 'Start of block'
    yield
    yield
    puts 'End of Block'
end

# Call call_block passing it a code block.
call_block {puts 'In the block'}

# This method uses the yield method that has been provided arguements.
def who_says_what
    yield "Faith", "Hello"
    yield "Hafsah", "Howdy"
end

# Within the code block send to the function, you must define parameters
# to recieve the arguements and they must be placed within the pipe symbols
# |params, ...|

who_says_what {|name, greeting| puts "#{name} says #{greeting}"}

# Another way to invoke a code block is to use the call method.
# this method uses the call method to execute a code block.
# needs the & to use this method
def call_block &b
    b.call
end

call_block {puts 'Hello there'}


# The call method may be provided arguments too.
# This method used the call method that has been provided arguments.
def call_block_greeting &b
    b.call "Ron"
end

# Call call_lobck_greeting giving it a code block.
call_block_greeting {|name| puts "Hello there #{name}"}

# Code blocks are used throughout ruby with iterators and collections as an array.
moreanimals = ['lions and', 'tigers and', 'bears', 'oh my']
moreanimals.each {|a| print a, " "}
puts 
('a'..'e').each {|char| print char}

# There are other iterator methods in Ruby, like upto
puts
3.upto(6) {|i| print i}

# Code blocks may be retured by functions, but first they must be converteds into
# Proc objects. Ruby has a function named lambda that converts a code block into
# a Proc object

def n_times thing
    lambda {|n| thing * n}
end

# Call n_times and store its return in a variable
# {|n| 23 * n}
p1 = n_times 23
puts p1.class

# To execute the code block containted in p1, use the call statement
puts p1.call 3
puts p1.call 4

# Call n_times and store its return in a variable, but
# give it a different argument
# {|n| "Hello " * n}
p2 = n_times "Hello "

# To execute the code block contained in p2, use the call statement
puts p2.call 3

# This functin contains a do-end code block that will be returned
# as a proc object
def day_of_week
    lambda do |today|
        if today.saturday?
             'Do chores around the house.'
        elsif today.sunday?
             'Relax.'
        else
             'Go to school.'
        end
    end
end

# Call day_of_week and store its return in a variable.
d = day_of_week

# To execute the code block contained in d, use the call statement
puts d.call Time.now