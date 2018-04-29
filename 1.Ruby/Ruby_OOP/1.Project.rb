class Project
  @@num_of_project = 0
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @des = description
    @@num_of_project +=1
    puts "\nThis is project #{@@num_of_project}"
  end

  def elevator_pitch
    puts "Project Name: #{@name}, Project Description: #{@des}"
  end
end

project1 = Project.new('Ruby','This is a ruby project')
project1.elevator_pitch

project2 = Project.new('Money','this is a project about Money')
project2.elevator_pitch

project3 = Project.new('Cosmos','this is a project taking us to explore the cosmos')
project3.elevator_pitch



############### PLARFORM SOLUTION ##########

class Project
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.name
puts project1.elevator_pitch
