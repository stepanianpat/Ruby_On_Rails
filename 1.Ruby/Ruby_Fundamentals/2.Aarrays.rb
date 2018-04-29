a = ['a','b','c','d','e','f',0,23,"hello"]

#.at

=begin
Returns the element at index.
A negative index counts from the end of self.
Returns nil if the index is out of range. See also #[].
=end
puts a.at(0)
puts a.at(-2)
puts a.at(9)

#.fetch

=begin
Tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds.
This error can be prevented by supplying a second argument, which will act as a default value.

Alternatively, if a block is given it will only be executed when an invalid index is referenced.

Negative values of index count from the end of the array.
=end

puts a.fetch(2)
puts a.fetch(-2)
# puts a.fetch(22)
puts a.fetch(98){|a| puts "#{a} is a cool index, but it is out of range"}
puts a.fetch(3){|a| puts "#{a} is an important element in my array"}  #the output is only d because it is in range

#.delete
=begin
Deletes all items from self that are equal to obj.

Returns the last deleted item, or nil if no matching item is found.

If the optional code block is given, the result of the block is returned if the item is not found.
=end


b=[123,12,12,12,34,55]
  #the following is from irb console
irb(main):003:0> a.delete(34)
=> nil
irb(main):004:0> b=[123,12,12,12,34,55]
=> [123, 12, 12, 12, 34, 55]
irb(main):005:0> b.delete(12)
=> 12
irb(main):006:0> b.delete(18)
=> nil
irb(main):007:0> b.delete(18){'not there'}
=> "not there"
irb(main):008:0>

# .reverse
a = ['a','b','c','d','e','f',0,23,"hello"]
  #the following is from irb console
irb(main):002:0> a.reverse
=> ["hello", 23, 0, "f", "e", "d", "c", "b", "a"]

irb(main):004:0> a.reverse_each{|i| puts i, ""}
hello
23
0
f
e
d
c
b
a
=> ["a", "b", "c", "d", "e", "f", 0, 23, "hello"]

irb(main):005:0> a.reverse!
=> ["hello", 23, 0, "f", "e", "d", "c", "b", "a"]
irb(main):006:0> a
=> ["hello", 23, 0, "f", "e", "d", "c", "b", "a"]

# .length
a = ['a','b','c','d','e','f',0,23,"hello"]
irb(main):009:0> a.length()
=> 9
irb(main):010:0> [].length
=> 0

# .sort
x = ['b','a','d','e','c','f']
irb(main):015:0> x.sort()
=> ["a", "b", "c", "d", "e", "f"]

irb(main):017:0> x.sort{|x,y| y<=>x}
=> ["f", "e", "d", "c", "b", "a"]

# they are the same, but not actually the same concepts <=> is not swapping
irb(main):019:0> x.sort().reverse()
=> ["f", "e", "d", "c", "b", "a"]

# .slice
x = ['b','a','d','e','c','f']
irb(main):032:0> x[2]+x[0]+x[1]
=> "dba"
irb(main):033:0> x[1..3]
=> ["a", "d", "e"]
irb(main):034:0> x[11..12]
=> nil
irb(main):035:0> x[-2,4]
=> ["c", "f"]
irb(main):036:0> x[-4,4]
=> ["d", "e", "c", "f"]
irb(main):037:0> x[-4,1]
=> ["d"]

# .shuffle
# Returns a new array with elements of self shuffled.
x = ['b','a','d','e','c','f']
irb(main):002:0> x.shuffle
=> ["a", "e", "f", "d", "b", "c"]
irb(main):003:0> x.shuffle
=> ["a", "b", "f", "c", "e", "d"]
irb(main):004:0> x.shuffle
=> ["a", "c", "f", "e", "d", "b"]

# .join
x = ['b','a','d','e','c','f']
irb(main):009:0> x.join
=> "badecf"
irb(main):010:0> x.join('-')
=> "b-a-d-e-c-f"
irb(main):011:0> x.join('#')
=> "b#a#d#e#c#f"

# .insert
a = ['a','b','c','d','e','f',0,23,"hello"]
irb(main):013:0> a.insert(3,"isaac")
=> ["a", "b", "c", "isaac", "d", "e", "f", 0, 23, "hello"]
irb(main):014:0> a.insert(-3, "ISAAC")
=> ["a", "b", "c", "isaac", "d", "e", "f", 0, "ISAAC", 23, "hello"]
irb(main):015:0>


# Extra
a = ['a','b','c','d','e','f',0,23,"hello"]
x = ['b','a','d','e','c','f']
irb(main):020:0> a+x
=> ["a", "b", "c", "d", "e", "f", 0, 23, "hello", "b", "a", "d", "e", "c", "f"]


# create array with string
a = %w{string anotherone  justanother  here  stringtwo}
=> ["string", "anotherone", "justanother", "here", "stringtwo"]



#Platform Solution
names = ["Matz", "Guido", "Dojo", "Michael", "Choi"]
numbers = [1, 7, 4, 9, 1, 3, 12, 8]

# .at or .fetch
puts names.at(3)
# will print out Michael
puts names.fetch(4)
# will print out Choi

puts numbers.at(0)
puts numbers.at(1)

# .delete
numbers.delete(1)
# will delete all the number 1 from the numbers array
# puts numbers # uncomment to check if the number 1s were deleted from the array
names.delete("Dojo")

# .reverse
puts names.reverse
puts numbers.reverse

# .length
puts names.length
puts numbers.length

# .sort
puts names.sort
puts numbers.sort

# .slice
puts names.slice!(1)
puts "updated names: "
puts names

# .shuffle
puts numbers.shuffle()

# .join
puts names.join("; ")
# will print out names with ; in between
puts numbers.join(" ")
# will print out numbers with space in between
puts numbers.join
# will print out number with no space or any characters in between
puts numbers.join(names[0])
# you may also join them using other values like one of the elements from the array names

# .insert
names.insert(2, "hi")
# will insert the string "hi" at the 2 index of the array names
names.insert(2, "Awesome")
# this will not replace the value at index 2, but will add it and push the other values to the proceeding indices
puts names

numbers.insert(6, 1, 2, 3)
# you can also inser multiple values at a time.
# remember that the first value is the index on where you want to put the values
# then followed by the value(s) you want to insert
puts numbers

# values_at() -> returns an array with values specified in the param
puts names.values_at(0)
puts names.values_at(1,4)
# you can choose which values you want to get using their index
puts numbers.values_at(0..4)
# you can also choose using range

# using values_at and join
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"
puts names.values_at(1,2).join(" is ")
