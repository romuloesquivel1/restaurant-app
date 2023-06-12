class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.float :sub_total
      t.float :taxes
      t.float :total

      t.timestamps
    end
  end
end
