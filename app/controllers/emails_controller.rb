class EmailsController < ApplicationController

  def index
    @teams = Team.all
  end
end
