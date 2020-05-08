class CreateLibros < ActiveRecord::Migration[5.1]
  def change
    create_table :libros do |t|

      t.timestamps
    end
  end
end
