class CreateFlors < ActiveRecord::Migration[5.1]
  def change
    create_table :flors do |t|
      t.string :nombre
      t.text :desc
      t.integer :total

      t.timestamps
    end
  end
end
