class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :consumer_id
      t.integer :farm_id

      t.timestamps

    end
  end
end
