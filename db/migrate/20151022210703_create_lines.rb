class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
