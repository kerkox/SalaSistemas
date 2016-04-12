class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :identificacion
      t.string :nombre
      t.string :apellidos
      t.integer :tipo
      t.string :email
      t.string :password
      t.integer :penalizaciones

      t.timestamps null: false
    end
  end
end
