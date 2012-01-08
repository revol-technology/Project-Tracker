class ProjectsController < ApplicationController
  def index
  @projects = Project.all
  end

  def edit
  @project = Project.find(params[:id])
  end

  def new
  @project =Project.new()
  end

  def create
  @project = Project.new(params[:project])
  @project.save!
  redirect_to (projects_path)
  end

  def show
  @project = Project.find(params[:id])
  end

  def update
  @project = Project.find(params[:id])
  @project.save!
  @project.update_attributes(params[:project])
  redirect_to (projects_path)
  end

  def destroy
  @project = Project.find(params[:id])
  @project.destroy
  redirect_to (projects_path)
  end

end
