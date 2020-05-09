class CreatePencils < ActiveRecord::Migration[5.1]
  def change
    create_table :pencils do |t|
      t.string :name
      t.text :desc
      t.integer :larg

      t.timestamps
    end
  end
end
