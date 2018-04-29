class CodingDojo
  @@num_of_branches = 0   #class variable, use @@ as indicator
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@num_of_branches += 1
    puts "\nCreated branch #{@@num_of_branches}"
  end

  def hello
    puts "Hello CodingDojo"
  end

  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}"
    puts "Branch Address: #{@branch_address}"
  end
end

branch1 = CodingDojo.new(1,"LA CodingDojo", "Burbank")
branch1.display_all
branch2 = CodingDojo.new(2,"SF CodingDojo", "San Jose")
branch2.display_all
branch3 = CodingDojo.new(3, "OC CodingDojo", "Costa Mesa")
branch3.display_all
