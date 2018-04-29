class SurveysController < ApplicationController
  @@times=0
  def index
    unless session[:time]
      session[:time] = 0
    end
  end

  def survey_process
      @@times+=1
      session[:result]=params[:survey]
      flash[:success] = "Thank you for submitting this form! You have submitted this form #{@@times} times now."
      redirect_to '/show'
  end

  def result
    # @result = session[:result]
    puts session[:result]
    render 'surveys/show'
  end

  def reset
    reset_session
    redirect_to :root
  end
end
