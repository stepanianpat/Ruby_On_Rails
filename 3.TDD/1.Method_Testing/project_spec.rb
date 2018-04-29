require_relative 'Project'

RSpec.describe Project do
  before(:each) do
    @project1=Project.new('Project1','Discription1','owner',[])
    # @project2=Project.new('Project2','Discription2')
  end

  it 'has a getter and setter for name attribute' do
    @project1.name = "changed name"
    expect(@project1.name).to eq("changed name")
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Name: Project1, Des: Discription1.")
    # expect(@project2.elevator_pitch).to eq("Name: Project2, Des: Discription2.")
  end

  it 'has getter and setter for owner attribute' do
    @project1.owner = "Isaac"
    expect(@project1.owner).to eq("Isaac")
  end

  it 'has a method task returns the task for the project' do
    @project1.task
    expect(@project1.task).to eq([])
  end

  it 'has a method add_task that push the new task to the task attr' do
    @project1.add_task
    expect(@project1.task).to eq(['new task'])
  end

  it 'has a method print_task will print our task' do
    expect(@project1.add_task.print_task).to eq(['new task'])
  end

end
