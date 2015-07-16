class AddProjectIdToUserProjects < ActiveRecord::Migration
  def change
    add_column :user_projects, :project_id, :integer
  end
end
