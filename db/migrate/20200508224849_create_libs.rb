class CreateLibs < ActiveRecord::Migration[5.1]
  def change
    create_table :libs do |t|
      t.string :nombre
      t.text :descrip

      t.timestamps
    end
  end
end
