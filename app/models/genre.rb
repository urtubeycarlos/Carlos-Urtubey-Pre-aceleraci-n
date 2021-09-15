# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genre < ApplicationRecord
    has_many :series
    has_many :movies
    validates :name, :image, presence: true
    validates :name, uniqueness: true
end
