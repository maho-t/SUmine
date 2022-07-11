class AskingsController < ApplicationController
  before_action :set_asking, only: [:show, :edit, :update]
  before_action :find_team, only: [:choose, :new, :create, :search]
  before_action :find_tag, only: [:choose, :new, :edit, :show]

  def index
    @teams = Team.all
  end

  def choose
    @askings = @team.askings.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @asking = Asking.new
  end

  def create
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

  def search
    if params[:q]&.dig(:question)
      squished_keywords = params[:q][:question].squish
      params[:q][:question_or_answer_cont_any] = squished_keywords.split(" ")
    end
    @q = @team.askings.ransack(params[:q])
    @askings = @q.result.order("created_at DESC").page(params[:page]).per(20)
  end

  private

  def asking_params
    params.require(:asking).permit(:question, :answer, :tag_list).merge(user_id: current_user.id)
  end

  def set_asking
    @team = Team.find(params[:team_id])
    @asking = @team.askings.find(params[:id])
  end

  def find_team
    @team = Team.find(params[:team_id])
  end

  def find_tag
    @tags = @team.askings.tag_counts_on(:tags).most_used(20)
    if @tag = params[:tag]
      @asking = @team.askings.tagged_with(params[:tag])
    end
  end

end
