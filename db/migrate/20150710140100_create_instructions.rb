class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :name
      t.string :content
      t.string :info_video
      t.string :stage_id

      t.timestamps null: false
    end
  end
end
