class UsersController < ApplicationController

  def index
    @users = User.all.order("lastname_kana")
  end
end
