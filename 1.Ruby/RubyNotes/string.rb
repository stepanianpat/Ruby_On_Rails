# x = "codingDojo"
# puts x.length #return length
# puts x.class  #return class type
# puts x.capitalize #Capitalize the first letter, d is becomes lowercase
# puts x.upcase
# puts x.downcase
# puts x[2]  #return d
# puts x.include?("dojo") # return false b/c case sensitive
# puts x.include?('Dojo') # return true
#
# puts "this world has the word'Dojo" if x.include?('Dojo')


#empty?
"".empty?  # return true
"hello".empty?  # return false


#length
puts "hello".length

# split
puts "hello".split                 # => ["hello"]
puts "hello".split("")             # => ["h", "e", "l", "l", "o"]
puts "oscar@gmail.com".split("@")  # => ["oscar", "gmail.com"]
puts "oscar@gmail.com".split("")



x='john, charles, matt, joe'
puts x.split(",")
puts x.split(",").to_s

y=""
puts "Y is empty" if y.empty?

"24 plus 8 is #{24+8}"  # returns 24 plus 8 is 32
# if using single quotation
'24 plus 24 plus 8 is #{24+8}'  # returns 24 plus 8 is #{24+8}
"24 plus 8 is " + (24 + 8).to_s  # => "24 plus 8 is 32"  #we convert (24+8) to string and then concatinate

# In Ruby, string is mutable!!!
str = "cat"
str[0] = "d"
puts str


#Exclamatin Points ! have the method make permanent changes to the particular instance of a String.
word = "hello"
word.capitalize # -> Hello
puts word #-> hello
#if use !
word.capitalize! #-> Hello
puts word #-> Hello

# interesting exz from Quiz
puts "Chuncky"<<"Bacon"  #-> output is: ChunckyBacon
puts "chunky"[2..3] #-> un
puts "Ruby" * 2 #-> RubyRuby
