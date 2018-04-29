# puts "Ruby" * 2

# puts "chunky" << 'Bacon'

# puts "chunky"[2..3]

# if ""
#   puts "I am positive1"
# end
#
# if 0
#   puts "I am positive2"
# end
#
# unless nil
#   puts "I am negative1"
# end
# unless false
#   puts "I am negative2"
# end
#
# puts "I am positive1" if "hello"
# puts "I am positive2" if 24
# puts "I am negative1" unless nil
# puts "I am negative2" unless false
#
# # puts "hello" if 0
# # puts "hello" if ""
# puts "hello" if nil
#
# puts "g" if []
#
# puts "m" unless []

# for i in 1..255
#  puts i if i%2==1.to_ary
# end
def random
  a=[]
  for x in (0..10)
    a << rand(55..100)
  end
  return a
end

puts random

def function7
  a=[]
  for x in (0...10)
    str=''
    for y in (1..5)
      str << (65+rand(26)).chr
    end
    a << str
  end
  return str
end
puts function7.inspect
