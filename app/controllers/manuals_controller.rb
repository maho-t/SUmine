class ManualsController < ApplicationController
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
    @manual = Manual.find(params[:id])
  end

  def edit
    @manual = Manual.find(params[:id])
    unless current_user.id == @manual.user_id
      redirect_to action: :show
    end
  end

  def update
    if @manual.update(manual_params)
      redirect_to action: :show
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

  private

  def manual_params
    params.require(:manual).permit(:title, :manual_text, :team_id).merge(user_id: current_user.id)
  end
end
