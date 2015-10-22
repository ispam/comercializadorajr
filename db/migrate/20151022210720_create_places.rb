class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :establishment

      t.timestamps null: false
    end
  end
end
