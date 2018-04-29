class DisplaysController < ApplicationController
  @@counter = 0
  #setting up the class variable to track the page count, will have the whole server runing counting the page visit, using session will only track one user!!!!
  # important, should use session!!!!!

  def index
    render text:"What do you want me to say???"
  end

  def hello
    render text:"Hello, Coding Dojo!!!"
  end

  def sayinghello
    render text:"Saying Hello!"
  end

  def joe
    render text:"Saying Hello Joe!"
  end

  def michael
    redirect_to "/say/hello/joe"
  end

  def time
    @@counter +=1
    render text:"You visted this URL #{@@counter} times."
    self
  end

  def restart
    # session[:time] = nil
    @@counter=0
    render text:"Destroy the session!"
  end
end
