class UsersController < ApplicationController
  def show
    # render text: "hello"
    render json: User.all
  end

  def new
    render 'users/new'
  end

  def profile
    # render json: User.params[:id]
    render json: User.find(params[:id])
  end

  def edit
    @users = User.find(params[:id])
    render 'users/edit'
  end

  def create
    user=User.create(name:params[:name])
    redirect_to '/users'
  end

  def total
    # @total = User.count
    render json: {total:User.count}
  end
end
