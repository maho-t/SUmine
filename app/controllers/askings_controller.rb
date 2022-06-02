class AskingsController < ApplicationController
  before_action :set_asking, only: [:show, :edit, :update]

  def index
    @teams = Team.all
  end

  def choose
    @team = Team.find(params[:team_id])
    @askings = @team.askings.all
  end

  def new
    @team = Team.find(params[:team_id])
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
  end

  def edit
    unless current_user.id == @asking.user_id
      redirect_to action: :show
    end
  end

  def update
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

  def set_asking
    @team = Team.find(params[:team_id])
    @asking = @team.askings.find(params[:id])
  end
end
