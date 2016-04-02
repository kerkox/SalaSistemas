class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :nombre
      t.integer :cantidad_total
      t.integer :cantidad_disponible

      t.timestamps null: false
    end
  end
end
