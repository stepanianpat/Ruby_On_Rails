# Method 1
def guess_number guess
  number = 25
  if guess > number
    puts "your guess is too high"
  elsif guess < number
    puts "your guess is too low"
  else
    puts "you got it!"
  end
end


# method 2
def guess_number2 guess
  number=25
  puts "you got it!" unless guess!=number
  if guess > number
    puts "your guess is too high"
  elsif guess < number
    puts "your guess is too low"
  end
end

guess_number2 25


#Platform Solution

def guess_number guess
  number = 25
  if guess == number
    return "You got it!"
  elsif guess > number
    return "Guess was too high!"
  else
    return "Guess was too low!"
  end
end

puts guess_number 25
puts guess_number 100
puts guess_number 0
