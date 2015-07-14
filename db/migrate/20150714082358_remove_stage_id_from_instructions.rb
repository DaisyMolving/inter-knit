class RemoveStageIdFromInstructions < ActiveRecord::Migration
  def change
    remove_column :instructions, :stage_id, :string
  end
end
