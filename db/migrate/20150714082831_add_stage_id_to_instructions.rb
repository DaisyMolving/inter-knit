class AddStageIdToInstructions < ActiveRecord::Migration
  def change
    add_column :instructions, :stage_id, :integer
  end
end
