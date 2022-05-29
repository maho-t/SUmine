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

  private

  def manual_params
    params.require(:manual).permit(:title, :manual_text, :team_id).merge(user_id: current_user.id)
  end
end
