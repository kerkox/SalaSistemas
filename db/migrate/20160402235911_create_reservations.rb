class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :fecha_inicio
      t.datetime :fecha_final
      t.references :User, index: true, foreign_key: true
      t.references :Room, index: true, foreign_key: true
      t.references :Period, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
