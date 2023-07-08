class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.float :price
      t.references :order, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
