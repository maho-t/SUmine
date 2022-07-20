class ManualsController < ApplicationController
  before_action :set_manual, only: [:show, :edit, :update]

  def index
    @manuals = Manual.includes(:user).order("created_at DESC")
  end

  def new
    @manual = Manual.new
  end

  def create
    @manual = Manual.new(manual_params)
    if @manual.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @team = @manual.team
    @comment = Comment.new
    @comments = @manual.comments.includes(:user)
  end

  def edit
    @team = @manual.team
    unless current_user.id == @manual.user_id
      redirect_to action: :show
    end
  end

  def update
    @team = @manual.team
    if @manual.update(manual_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    manual = Manual.find(params[:id])
    unless current_user.id == manual.user_id
      redirect_to action: :show
    end
    manual.destroy
    return redirect_to action: :index
  end

  def search
    if params[:q]&.dig(:title)
      squished_keywords = params[:q][:title].squish
      params[:q][:title_cont_any] = squished_keywords.split(" ")
    end
    @q = Manual.ransack(params[:q])
    @manuals = @q.result
  end

  def each
    @team = Team.find(params[:team_id])
    @manuals = Manual.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  private
  def manual_params
    params.require(:manual).permit(:title, :manual_text, :team_id, :shiryo).merge(user_id: current_user.id)
  end

  def set_manual
    @manual = Manual.find(params[:id])
  end
end
