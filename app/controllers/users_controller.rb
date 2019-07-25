class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.new user_params

    if @user.save
      redirect_to root_path
    else
      redirect_to root_path, notice: 'Cannot select tenant'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name)
  end
end
