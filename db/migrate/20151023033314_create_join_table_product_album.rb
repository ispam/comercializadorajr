class CreateJoinTableProductAlbum < ActiveRecord::Migration
  def change
    create_join_table :products, :albums do |t|
      # t.index [:product_id, :album_id]
      # t.index [:album_id, :product_id]
    end
  end
end
