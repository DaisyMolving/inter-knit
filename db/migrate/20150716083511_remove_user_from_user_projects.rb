class RemoveUserFromUserProjects < ActiveRecord::Migration
  def change
     remove_column :user_projects, :user_id, :string
  end
end
