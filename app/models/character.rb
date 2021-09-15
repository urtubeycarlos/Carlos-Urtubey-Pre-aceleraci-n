# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  age        :integer
#  history    :text
#  image      :string
#  name       :string
#  weight     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Character < ApplicationRecord
    has_and_belongs_to_many :series
    has_and_belongs_to_many :movies
    validates :name, :history, :image, :age, :weight, presence: true
    validates :name, uniqueness: true

    scope :filter_query_params, -> (params) {
        query = ""
        params.each do |param_name, value|
            unless param_name == "movie"
                query += "#{param_name} LIKE ? AND "
            end
        end
        query = query[0...-5]
        where(query, params.values)
    }
end
