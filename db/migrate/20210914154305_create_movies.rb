class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.integer :calification

      t.timestamps
    end
  end
end
