class LikesController < ApplicationController
  before_action :require_login, only: [:create, :destroy]


  def create
    Like.create(like_params)
    redirect_to "/secrets"
  end

  def destroy
    @like = Like.where(user_id: session[:user_id], secret_id: params[:id]).first
    # @like = Like.find(params[:secret_id])
    # puts "#{@like}"
    @like.destroy if current_user.id === @like.user_id

    redirect_to "/secrets"
  end


  private
  def like_params
    params.require(:like).permit(:secret_id).merge(user:current_user)
  end
end
