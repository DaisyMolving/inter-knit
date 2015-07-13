class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    @projects = Project.all
    @project_stage = Stage.where(project_id: @project.id) 
  end

end
