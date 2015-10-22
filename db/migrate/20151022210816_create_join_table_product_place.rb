class CreateJoinTableProductPlace < ActiveRecord::Migration
  def change
    create_join_table :products, :places do |t|
      # t.index [:product_id, :place_id]
      # t.index [:place_id, :product_id]
    end
  end
end
