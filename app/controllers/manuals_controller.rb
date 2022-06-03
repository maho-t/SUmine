class ManualsController < ApplicationController
  before_action :set_manual, only: [:show, :edit]

  def index
    @manuals = Manual.select("title")
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
  end

  def edit
    unless current_user.id == @manual.user_id
      redirect_to action: :show
    end
  end

  def update
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

  private
  def manual_params
    params.require(:manual).permit(:title, :manual_text, :team_id).merge(user_id: current_user.id)
  end

  def set_manual
    @manual = Manual.find(params[:id])
  end
end
