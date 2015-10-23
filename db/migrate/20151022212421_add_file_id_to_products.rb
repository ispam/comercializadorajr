class AddFileIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :file_id, :string
  end
end
