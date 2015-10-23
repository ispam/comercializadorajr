class MoreInfo < ActiveRecord::Migration
  def change
  	add_column :products, :file_filename, :string
    add_column :products, :file_size, :integer
    add_column :products, :file_content_type, :string
  end
end
