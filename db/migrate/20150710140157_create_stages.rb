class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :title
      t.string :image
      t.string :project_id

      t.timestamps null: false
    end
  end
end
