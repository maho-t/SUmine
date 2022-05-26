class UsersController < ApplicationController

  def index
    @users = User.all.order("lastname_kana")
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    unless current_user.id == user.id
      redirect_to action: :show
    end
    user.destroy
    return redirect_to new_user_registration_path
  end
end
