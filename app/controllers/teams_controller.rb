class TeamsController < ApplicationController
  def index
  @project = Project.find(params[:project_id])
  end

  def edit
  @project = Project.find(params[:project_id])
  @team = Team.find(params[:id])
  @people = Person.all
  end

  def show
  @team = Team.find(params[:id])
  end

  def new
  @team =Team.new()
  @project=Project.find(params[:project_id])
  @people = Person.all
  end

  def update
  @team = Team.find(params[:id])
  @team.update_attributes(params[:team])
  @team.save!
  redirect_to projects_path
  end

  def destroy
  @team = Team.find(params[:id])
  @team.destroy
  redirect_to (teams_path)
  end

  def create
    project = Project.find(params[:project_id])       #find the project to assign the team to
    @team = project.build_team()                       #initialise new team for the team (new does not create in database)
    people_hash = params[:team]                       #capture the parameters passed from the form(persons)
    people_id_array = people_hash.values              #create an array of the ids of the persons hash captured to be assigned to the team
    people_id_array.each do |id|                      # loop through the array of the person ids
      person = Person.find(id)                        # find each person from the looped id
      @team.people << person                          # Assign the person to the team
    end
    @team.save!                                       # Save the team actually to the database
    project.team_id = @team.id                        # assign team id to project id
    project.save!                                     # save the project as well
    redirect_to projects_path
  end

end
