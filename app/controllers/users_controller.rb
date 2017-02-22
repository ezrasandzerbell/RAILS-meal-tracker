class UsersController < ApplicationController
  def show
  end

  def update
    @user = current_user
    if @user.update(user_params)
      @user.cal_rem = @user.calorie_allowance
      @user.save
      flash[:notice] = "You updated your account"
      redirect_to root_path
    else
      flash[:notice] = "Failed to update"
      redirect_to root_path
    end
  end

private
  def user_params
    params.require(:user).permit(:weight, :calorie_allowance)
  end
end
