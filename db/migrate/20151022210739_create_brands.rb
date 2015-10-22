class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :marks

      t.timestamps null: false
    end
  end
end
