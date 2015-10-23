class AddFileIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :file_id, :string
  end
end
