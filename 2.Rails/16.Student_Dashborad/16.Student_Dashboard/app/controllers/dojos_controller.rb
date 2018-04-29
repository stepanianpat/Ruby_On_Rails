class DojosController < ApplicationController
  def index
    @dojo=Dojo.all
    @count=Dojo.count
  end

  def new

  end

  def create
    # @dojo=Dojo.create(dojo_params)
    # how to work with the errors messages is using .create
    dojo=Dojo.new(dojo_params)
    if dojo.save
      redirect_to '/dojos'
    else
      flash[:errors]=dojo.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @dojo=Dojo.find(params[:id])
  end

  def edit
    @dojo=Dojo.find(params[:id])
  end

  def update
     dojo=Dojo.find(params[:id])
     dojo.update(dojo_params)
     if dojo.save
       redirect_to '/dojos'
     else
       flash[:errors]=dojo.errors.full_messages
       redirect_to :back
     end
  end

  def destroy
    Dojo.find(params[:id]).destroy
    redirect_to '/dojos'
  end

  def goback
    redirect_to '/dojos'
  end


  private
  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
