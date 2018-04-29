class LikesController < ApplicationController
  before_action :require_login
  def create
    Like.create(like_params)
    redirect_to "/secrets"
  end

  def destroy
    @like = Like.where(user_id: session[:user_id], secret_id: params[:id]).first
    # @like = Like.find(params[:secret_id])
    @like.destroy if current_user === @like.user
    redirect_to "/secrets"
  end


  private
  def like_params
    params.require(:like).permit(:secret_id).merge(user:current_user)
  end
end
