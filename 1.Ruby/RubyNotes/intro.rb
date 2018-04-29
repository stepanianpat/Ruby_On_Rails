puts "hello"
puts "coding"
puts "dojo"

puts "hello"
puts "isaac"

BEGIN{
  puts 'this is the begining'
}

END{
  puts 'this is the end'
}


x=5; y=10; z=x+y
puts z

first_name = 'isaac'
last_name = 'la'

# puts "your name is "
# puts first_name
# puts last_name

puts first_name, last_name # still create two lines when prints
puts 'your name is: '+first_name+" "+last_name

puts "first name is #{first_name} and last name is #{last_name}"
puts "first name is %s and last name is %s" %[first_name, last_name]

z = 50
puts "the value z is #{z}"
puts 'the value z is %d' %z #or %[z]
# %d decimal
# %f float
# %s string


puts "I am like 5'10\" tall"
