class AddCsvColumnsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :time_slot, :string
    add_column :places, :category, :string
    add_column :places, :display_type, :string
    add_column :places, :display_price, :string
  end
end
