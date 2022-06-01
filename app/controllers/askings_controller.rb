class AskingsController < ApplicationController
  def index
    @teams = Team.all
  end

  def choose
    @team = Team.find(params[:id])
    @askings = Asking.all
  end
end
