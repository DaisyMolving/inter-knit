class AddUserIdToUserProjects < ActiveRecord::Migration
  def change
    add_column :user_projects, :user_id, :integer
  end
end
