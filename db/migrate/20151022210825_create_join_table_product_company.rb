class CreateJoinTableProductCompany < ActiveRecord::Migration
  def change
    create_join_table :products, :companies do |t|
      # t.index [:product_id, :company_id]
      # t.index [:company_id, :product_id]
    end
  end
end
