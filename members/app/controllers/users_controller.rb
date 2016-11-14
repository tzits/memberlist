class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else

    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:avatar)
  end
end
