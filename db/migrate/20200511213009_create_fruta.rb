class CreateFruta < ActiveRecord::Migration[5.1]
  def change
    create_table :fruta do |t|
      t.string :nombre
      t.text :tipo
      t.integer :total

      t.timestamps
    end
  end
end
