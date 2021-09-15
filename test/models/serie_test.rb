# == Schema Information
#
# Table name: series
#
#  id           :integer          not null, primary key
#  calification :integer
#  image        :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  genre_id     :integer          not null
#
# Indexes
#
#  index_series_on_genre_id  (genre_id)
#
# Foreign Keys
#
#  genre_id  (genre_id => genres.id)
#
require "test_helper"

class SerieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
