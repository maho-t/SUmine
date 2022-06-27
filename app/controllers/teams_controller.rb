class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.new(team_params)
    if team.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
  end

  def edit
    unless @team.user_ids.include?(current_user.id)
      redirect_to action: :show
    end
  end

  def update
    if @team.update(team_params)
      redirect_to action: :show
    end
  end

  def destroy
    team = Team.find(params[:id])
    unless team.user_ids.include?(current_user.id)
      redirect_to action: :show
    end
    team.destroy
    return redirect_to root_path
  end

  private
  
  def team_params
    params.require(:team).permit(:name, :prof, :email, { user_ids: [] })
  end

  def set_team
    @team = Team.find(params[:id])
  end
end