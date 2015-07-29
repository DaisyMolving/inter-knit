class AddModalImageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :modal_image, :string
  end
end
