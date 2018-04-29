class SecretsController < ApplicationController

  before_action :require_login
  # before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

  def index
    @secret=Secret.all
  end

  def create
    secret=Secret.new(secre_params)
    if secret.save
      redirect_to "/users/#{current_user.id}"
    else
      flash[:errors]=secret.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @secret=Secret.find(params[:id])
    @secret.destroy if @secret.user == current_user
    redirect_to "/users/#{current_user.id}"
  end

  private
  def secre_params
    params.require(:secret).permit(:content).merge(user:current_user)
  end
end
