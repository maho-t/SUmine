class UsersController < ApplicationController

  def index
    @users = User.all.order("lastname_kana")
  end

  def show
    @user = User.find(params[:id])
  end
end
