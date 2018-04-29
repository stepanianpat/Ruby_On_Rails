# .any?
ruby ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true

# .each
ruby ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--

a = [ "a", "b", "c" ]
a.each_index {|x| print x, " -- " }
# ->  0 -- 1 -- 2 --

# .collect
a = [ "a", "b", "c", "d" ]
a.collect { |x| x + "!" }         #=> ["a!", "b!", "c!", "d!"]
a.map.with_index { |x, i| x * i } #=> ["", "b", "cc", "ddd"]
a                                 #=> ["a", "b", "c", "d"]

ruby (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
ruby (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]


a = [ "a", "b", "c", "d" ]
a.map! {|x| x + "!" }
a #=>  [ "a!", "b!", "c!", "d!" ]
a.collect!.with_index {|x, i| x[0...i] }
a #=>  ["", "b", "c!", "d!"]


# .detect / .find
ruby (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
ruby (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35

#.find_all { |obj| block } or .select { |obj| block }
#=> returns an array containing all elements of enum for which block is not false
ruby (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]

# .reject { |obj| block } => opposite of find_all
ruby (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

# .upto(limit) => iterates block up to the int number
ruby 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
