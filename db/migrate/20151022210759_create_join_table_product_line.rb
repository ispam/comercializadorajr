class CreateJoinTableProductLine < ActiveRecord::Migration
  def change
    create_join_table :products, :lines do |t|
      # t.index [:product_id, :line_id]
      # t.index [:line_id, :product_id]
    end
  end
end
