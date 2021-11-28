class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(@user.id)
  end
 
private
  def user_params
    params.require(:user).permit(:name, :contactNumber, :plan)
  end 
end
