x = 1..10

puts "Class Name: #{x.class}"

puts "It does include 7!" if x.include? 7

puts "the last number of the range is " + x.last.to_s
puts "the max number of the range is " + x.max.to_s
puts "the min number of the range is " + x.min.to_s
puts "the first number of the range is " + x.first.to_s


y = 'a'..'z'
puts y.to_a.shuffle.join('-').to_s
