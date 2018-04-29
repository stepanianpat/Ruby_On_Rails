#1. print 1-255
for i in 1..255
  puts i
end
#
puts i if i in 1..255


#2. print odd number between 1-255
for i in 1..255
  if i % 2 == 1
    puts i
  end
end

puts i in 1..255 if i%2 ==1

#3. print sum
sum = 0
for i in 0..255
  sum += i
  puts " New Num : #{i}, Sum: #{sum}"
end

#4. Iterating through an array

def allelement arr
  for a in arr
    puts a
  end
end

allelement ([1,3,5,7,9,13])

# Online Code
arr.each{|a| puts a}


#5. Find Max
def findmax arr
  return arr.max
end

x = [2,34,54,3,-1,23]
findmax x

#6. Get Average
def average arr
  sum = 0
  for a in arr
    sum +=a
  end
  avg = sum/arr.length
  return avg
end

#method 2
puts arr.reduce(:+) / arr.length.to_f
#method 3
sum = x.length
puts x.inject(:+) / sum

#7. Array with Odd NUmbers
for i in 1..255
 puts i if i%2==1
end



#8. Greater than Y
def gt arr y
  count = 0
  for i in arr
    if i > y
    count +=1
    end
    return count
  end
end

#9. Square the value
def sq(arr)
  arr.collect {|i| i*i }
end

#10. Eliminate Negative NUmbers
def noneg arr
  arr.reject{|i| i<0}
end

#11. Max, Min and average
def maxminavg arr
  sum = 0
  for i in arr; sum+=i
    avg=sum/arr.length
  end
  return arr.max, arr.min,avg
end

#12. Shift the value to the array
def shifttoarray arr
  for i in (0..arr.length)
    arr[i]=arr[i+1]
  end
  arr.pop
  arr << 0
end

#13. Number to string
def numtostr arr
  arr.each_index{|i|
    if arr[i]<0
      arr[i]="dojo"
    end
  }
end


###### PLATFORM SOLOTION


# Print 1-255
# Write a program that would print all the numbers from 1 to 255.

(1..255).each { |i| puts i }

# Print odd numbers between 1-255
# Write a program that would print all the odd numbers from 1 to 255.

(1..255).each { |i| puts i if i.odd? }

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:

sum = 0
(0..255).each { |i| puts "New Number: #{i} Sum: #{sum += i}"}

# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.

[1,3,5,7,9,13].each { |elem| puts elem }

# Find Max
# Write a program  that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.

puts [-3,-5,-7].max

# Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.

arr = [2,10,3]
puts arr.reduce(:+) / arr.length.to_f

# Array with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

y = []
(1..255).each { |i| y << i if i.odd? }

# Greater Than Y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).

arr = [1, 3, 5, 7]
y = 3
puts arr.count { |elem| elem > y }

# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].

arr = [1, 5, 10, -2]
puts arr.map! { |elem| elem * elem }


# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].

arr = [1, 5, 10, -2]
puts arr.each_index { |index| arr[index] = 0 if arr[index] < 0 }

# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.

arr = [1, 5, 10, -2]
{ max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }

# Shifting the Values in the Array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

arr = [1, 5, 10, 7, -2]
arr.rotate!(1)[arr.length-1] = 0

# Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

arr = [-1, -3, 2]
puts arr.each_index { |index| arr[index] = "Dojo" if arr[index] < 0 }
