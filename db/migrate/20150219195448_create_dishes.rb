class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :restaurant_id
      t.string :name
      t.text :desc

      t.timestamps

    end
  end
end
