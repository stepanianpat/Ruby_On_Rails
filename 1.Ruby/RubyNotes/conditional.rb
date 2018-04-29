x = 1
if x > 2
  puts "x is greater than 2"
elsif x < 2 and x > 0
  puts " x is 1"
else
  puts "I dont know"
end
# parenthesis () is optional

puts "x is not 2" if x !=2
puts "x is greater than 2" if x>2
puts "x is not 2 " unless x==2  #keyword unless


## another if
number = 15
if number%3==0 && number%5==0
  puts "FizzBuzz"
elsif number&3==0
  puts "Fizz"
elsif number%5==0
  puts "Buzz"
end


##
if !(age<21)
  puts "welcome to the pub"
else
  puts "no enter"
end
## the above can be written the following
unless age < 21
  puts "welcome to the pub"
else
  puts "no enter"
end

## case statement

age = 5

case age
when 0..2
  puts "baby"
when 3..6
  puts "kid"
when 7..12
  puts "child"
when 13..18
  puts "youth"
else
  puts "adult"
end
