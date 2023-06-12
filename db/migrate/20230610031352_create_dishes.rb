class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :dish_group
      t.string :name
      t.string :description
      t.float :price
      t.string :photo

      t.timestamps
    end
  end
end
