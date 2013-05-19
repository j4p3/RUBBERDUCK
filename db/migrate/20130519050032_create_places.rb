class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :desc
      t.string :address
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
