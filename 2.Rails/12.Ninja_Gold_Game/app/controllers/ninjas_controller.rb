class NinjasController < ApplicationController
  Time.zone = "Pacific Time (US & Canada)"
  def index
    unless session[:gold]
      session[:gold] = 0
    end

    unless session[:activities]
      session[:activities]=[]
    end

    @gold = session[:gold]
    @activities = session[:activities]
  end

  def gold
    if params[:building] == 'farm'
      newgold = rand(10..20)
    elsif params[:building] == 'cave'
      newgold=rand(5..10)
    elsif params[:building] == 'house'
      newgold=rand(2..5)
    elsif params[:building] == 'casino'
      newgold=rand(-50..50)
    end

    session[:gold] += newgold

    if newgold > 0
      session[:activities] << "Yeah, you earn #{newgold} gold from #{params[:building]}! #{Time.zone.now.strftime('%I:%M %p %Y %B %d')}"
    else
      session[:activities] << "Opps, you lost #{newgold} gold from #{params[:building]}! #{Time.zone.now.strftime('%I:%M %p %Y %B %d')}"
    end

    redirect_to :root
  end

  def reset
    reset_session
    redirect_to :root
  end
end
