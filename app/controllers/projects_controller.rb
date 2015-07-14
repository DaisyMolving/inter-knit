class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
    @projects = Project.all
    @project_stage = Stage.where(project_id: @project.id)
    @project_stage_instructions = Instruction.where(stage_id: @project_stage.first.id)
    @instructions = @project.instructions

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instructions }
    end
  end

end
