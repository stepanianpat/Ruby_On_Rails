x ={:first_name => "Isaac", :last_name => "La"}
puts "Hello"+" "+x[:first_name].to_s+" "+x[:last_name].to_s

h={first_name:"Gary",last_name:"Wong"}
puts h[:first_name]+" "+h[:last_name]

h.delete :first_name
puts "h is now", h

if x.has_key? :first_name
  puts "x has a key called :first_name"
else
  puts "x has no such a key"
end

if x.has_value? "Isaac"
  puts "x has a value Isaac"
else
  puts "x has no such a value"
end

puts "*************************************"

def new_user user={first_name:"fname",last_name:"lname"}
  puts "hello,#{user[:first_name]} #{user[:last_name]}"
end

new_user
new_user x

puts "*****************************"

a ={first_name:"Isaac", last_name:"La"}

def new_user2 greeting="welcome",first_name:"firname", last_name:"lasname"
  puts "#{greeting}, #{first_name} #{last_name}"
end

new_user2 "Hi", a

# def new_user greeting="Welcome", first_name: "first", last_name: "last"
#     puts "#{greeting}, #{first_name} #{last_name}"
# end
# our_user = {first_name: "Oscar", last_name: "Vazquez"}
# new_user                  # => Welcome, first last
# new_user "Hello", a # => Hello, Oscar Vazquez
