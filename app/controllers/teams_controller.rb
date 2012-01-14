class TeamsController < ApplicationController
  def index

  @teams = Team.all

  end

  def edit
  end

  def show
  @team = Team.find(params[:id])

  end

  def new
  @team =Team.new()
  end

  def update
  end

  def destroy
  end

  def create
  @team = Team.new(params[:team])
  @team.save!
  redirect_to (teams_path)
  end

end
