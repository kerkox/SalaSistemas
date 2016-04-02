class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.date :fecha_inicio
      t.date :fecha_finalizacion

      t.timestamps null: false
    end
  end
end
