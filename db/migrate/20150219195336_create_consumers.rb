class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :email
      t.string :sex
      t.integer :year_of_birth
      t.string :zip

      t.timestamps

    end
  end
end
