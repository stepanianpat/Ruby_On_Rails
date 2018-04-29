class UsersController < ApplicationController
  layout "two_column"
  def index
    @user=User.all
  end

  def create

  end
end
