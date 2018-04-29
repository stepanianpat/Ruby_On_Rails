$i=0  # $ -> global variables
$num=5
begin
  puts "inside the loop, i = #{$i}"
  $i += 1
end while $i < $num


$j=0
$num=5
begin
  puts "inside the loop, j = #{$j}"
  $j += 1

  puts "$j is now 3" if $j==3
end while $j < $num



$k=0
$num=5
begin
  puts "inside the loop, k = #{$k}"
  $k += 1
  puts "$k is not 3" unless $k==3
end while $k < $num

for i in 0..5   # .. is inclusive
  puts "value of local variable is #{i}"
  puts "i is now 3" if i==3
end

for j in 0...5   # ... exclusive
  puts "value of local variable is #{j}"
end


# While loop
i = 0
num = 5
while i < num do   # the key word do!!
  puts "inside the loop, i = #{i}"
  i+=1
  break if i==2
end


# For loop next methos
for i in 0..5
  next if i==2   # skip i=2
  puts "value of local vaiable i is #{i}"
end
