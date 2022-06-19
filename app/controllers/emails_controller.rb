class EmailsController < ApplicationController
  before_action :find_team, only: [:choose, :new, :create]

  def index
    @teams = Team.all
  end

  def choose
    @emails = @team.emails.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @emails = Email.new
  end

  def create
    email = @team.emails.new(email_params)
    if email.save
      redirect_to choose_team_emails_path(@team)
    else
      render :new
    end
  end

  private

  def email_params
    params.require(:email).permit(:title, :text, :shiryo).merge(user_id: current_user.id)
  end
  
  def find_team
    @team = Team.find(params[:team_id])
  end
end
