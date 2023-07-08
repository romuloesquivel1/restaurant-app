class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :dish_group
      t.string :name
      t.string :description
      t.float :price
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
