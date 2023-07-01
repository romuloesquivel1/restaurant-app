class RemovePhotoFromDishes < ActiveRecord::Migration[7.0]
  def change
    remove_column :dishes, :photo, :string
  end
end
