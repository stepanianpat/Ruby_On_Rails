# .include? (value)

a = 12..55
puts "is 56 include in the range" if a.include? 56

irb(main):002:0> puts "is 56 include in the range" if a.include? 56
=> nil

puts 'is 55 include in the range' if a.include? 55
# this will run b/c 55 is included in the range
# .. is inclusive
# ... is exclusive


irb(main):001:0> a = 12..55
=> 12..55
irb(main):002:0> a.last
=> 55
irb(main):003:0> a.max
=> 55
irb(main):004:0> a.min
=> 12


# Platform Solution

# 1) .include? returns true if obj is an element of the range, false otherwise

puts (1...10).include?(10) # => false
puts (1..10).include?(10)  # => true

# 2) .last returns the last object in the range, or an array of the last n elements.

puts (1..10).last    # => 10
puts (1...10).last   # => 10. Returns the last object defined in the range
puts (1..10).last(3) # => [8, 9, 10]

# 3) .max returns the maximum value in range

puts (1..10).max # => 10

# 4) .min returns the maximum value in range

puts (1..10).min # => 1
