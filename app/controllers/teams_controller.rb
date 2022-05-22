class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:user)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Teaem.new(team_params)
    if @team.save
      redirect_to action: :index
    else
      render 'new'
    end
  end


  private
  
  def team_params
    params.require(:team).permit(:name, :prof, :email).merge(user_id: current_user.id)
  end

end
