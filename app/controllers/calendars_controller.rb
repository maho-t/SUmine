class CalendarsController < ApplicationController

  before_action :set_biginning_of_week
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
  def set_biginning_of_week
    Date.beginning_of_week = :sunday
  end

  def calendar_params
    params.require(:calendar).permit(:title, :start_time).merge(user_id: current_user.id)
  end
end
