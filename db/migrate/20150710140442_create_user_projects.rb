class CreateUserProjects < ActiveRecord::Migration
  def change
    create_table :user_projects do |t|
      t.string :user_id
      t.string :project_id
      t.string :completed_project_images

      t.timestamps null: false
    end
  end
end
