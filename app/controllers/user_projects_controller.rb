class UserProjectsController < ApplicationController
  skip_before_filter :verify_authenticity_token 
  def create
    #create a user project object and save to the database
    @user_project = UserProject.create(user_id:current_user.id, project_id: params[:project_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_project }
    end
  end
end