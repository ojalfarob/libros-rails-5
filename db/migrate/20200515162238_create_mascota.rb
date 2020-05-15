class CreateMascota < ActiveRecord::Migration[5.1]
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.text :descrip
      t.integer :cantidad

      t.timestamps
    end
  end
end
