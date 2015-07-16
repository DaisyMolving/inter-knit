class RemoveProjectIdFromUserProjects < ActiveRecord::Migration
  def change
    remove_column :user_projects, :project_id, :string
  end
end
