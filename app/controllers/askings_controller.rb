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

  def edit
    @team = Team.find(params[:team_id])
    @asking = @team.askings.find(params[:id])
    unless current_user.id == @asking.user_id
      redirect_to action: :show
    end
  end

  def update
    @team = Team.find(params[:team_id])
    @asking = @team.askings.find(params[:id])
    if @asking.update(asking_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    team = Team.find(params[:team_id])
    asking = team.askings.find(params[:id])
    unless current_user.id == asking.user_id
      redirect_to action: :show
    end
    asking.destroy
    return redirect_to action: :choose
  end

  private

  def asking_params
    params.require(:asking).permit(:question, :answer).merge(user_id: current_user.id)
  end
end
