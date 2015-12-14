class AddImageToLines < ActiveRecord::Migration
  def change
    add_column :lines, :image_id, :string
  end
end
