class AddImageNameToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :image_name, :string
  end
end
