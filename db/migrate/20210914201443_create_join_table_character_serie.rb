class CreateJoinTableCharacterSerie < ActiveRecord::Migration[6.1]
  def change
    create_join_table :characters, :series do |t|
      # t.index [:character_id, :serie_id]
      # t.index [:serie_id, :character_id]
    end
  end
end
