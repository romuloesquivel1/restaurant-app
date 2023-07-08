class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.date :date, default: DateTime.now
      t.float :sub_total, default: 0
      t.float :taxes, default: 10
      t.float :total, default: 0
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
