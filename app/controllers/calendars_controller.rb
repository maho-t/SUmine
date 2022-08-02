class CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all
    @calendar = Calendar.new
  end
  
  def new
    @calendar = Calendar.new
  end

  def create
    Calendar.create(calendar_params)
    redirect_to calendars_path
  end

  private

  def calendar_params
    params.require(:calendar).permit(:title).merge(user_id: current_user.id)
  end
  
end
