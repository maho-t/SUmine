class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :edit, :update]
  before_action :find_team, only: [:choose, :new, :create]

  def index
    @teams = Team.all
  end

  def choose
    @emails = @team.emails.includes(:user).order("created_at DESC").page(params[:page]).per(20)
  end

  def new
    @email = Email.new
  end

  def create
    @email = @team.emails.new(email_params)
    if @email.save
      redirect_to choose_team_emails_path(@team)
    else
      render :new
    end
  end

  def show
  end

  def edit
    unless current_user.id == @email.user_id
      redirect_to action: :show
    end
  end

  def update
    if @email.update(email_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    team = Team.find(params[:team_id])
    email = team.emails.find(params[:id])
    unless current_user.id == email.user_id
      redirect_to action: :show
    end
    email.destroy
    return redirect_to action: :choose
  end

  private

  def email_params
    params.require(:email).permit(:title, :text, {images: []}).merge(user_id: current_user.id)
  end

  def set_email
    @team = Team.find(params[:team_id])
    @email = @team.emails.find(params[:id])
  end
  
  def find_team
    @team = Team.find(params[:team_id])
  end
end
