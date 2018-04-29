def hello
  puts "hello"
end

hello


def say_hello name1, name2
  puts "hello, #{name1} and #{name2}"
end

say_hello "isaac","rong"


def say_hello name1="oscar", name2="shane"
  "hello, #{name1} and #{name2}"
end
puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"


def say_hello name1, name2
  if name1.empty? or name2.empty?
    return "Who are you?!"
  end
  # Doesn't reach the last line because we used return
  "hello, #{name1} and #{name2}"
end
puts say_hello "", ""
