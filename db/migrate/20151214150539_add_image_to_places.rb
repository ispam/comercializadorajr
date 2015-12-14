class AddImageToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :image_id, :string
  end
end
