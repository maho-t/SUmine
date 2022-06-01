class AskingsController < ApplicationController
  def index
    @teams = Team.all
  end

  def choose
    @team = Team.find(params[:team_id])
    @askings = @team.askings.all
  end

  def new
    @asking = Asking.new
  end

  def create
    @team = Team.find(params[:team_id])
    @asking = @team.askings.new(asking_params)
    if @asking.save
      redirect_to choose_team_askings_path(@team)
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:team_id])
    @asking = @team.askings.find(params[:id])
  end

  private

  def asking_params
    params.require(:asking).permit(:question, :answer).merge(user_id: current_user.id)
  end
end
