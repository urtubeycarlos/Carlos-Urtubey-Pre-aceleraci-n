class RenameColumnImagenCharacter < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :imagen, :image
  end
end
