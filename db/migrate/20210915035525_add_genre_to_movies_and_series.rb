class AddGenreToMoviesAndSeries < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :genre, foreign_key: true, index: true, null: false
    add_reference :series, :genre, foreign_key: true, index: true, null: false
  end
end
