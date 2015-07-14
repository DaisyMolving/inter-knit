class RemoveProjectIdFromStages < ActiveRecord::Migration
  def change
    remove_column :stages, :project_id, :string
  end
end
