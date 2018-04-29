class Project
  @@num_of_project = 0
  attr_accessor :name, :description, :owner, :task

  def initialize(name, description, owner, task)
    @name = name
    @des = description
    @owner = owner
    @task = []
    @@num_of_project +=1
    # puts "\nThis is project #{@@num_of_project}"
  end

  def elevator_pitch
    "Name: #{@name}, Des: #{@des}."
  end

  def task
    @task
  end

  def add_task
    @task << 'new task'
    self
  end

  def print_task
    # @task.each do |task| {puts task}
    @task
  end
end

# project1 = Project.new('Ruby','This is a ruby project')
# project1.elevator_pitch
#
# project2 = Project.new('Money','this is a project about Money')
# project2.elevator_pitch
#
# project3 = Project.new('Cosmos','this is a project taking us to explore the cosmos')
# project3.elevator_pitch
