class Information < ActiveRecord::Migration
  def change
  	add_column :lines, :image_filename, :string
    add_column :lines, :image_size, :integer
    add_column :lines, :image_content_type, :string
    add_column :places, :image_filename, :string
    add_column :places, :image_size, :integer
    add_column :places, :image_content_type, :string
  end
end
