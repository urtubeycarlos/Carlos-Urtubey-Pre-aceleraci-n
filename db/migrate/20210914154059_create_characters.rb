class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :imagen
      t.string :name
      t.integer :age
      t.float :weight
      t.text :history

      t.timestamps
    end
  end
end
