class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :context
      t.integer :num

      t.timestamps
    end
  end
end
