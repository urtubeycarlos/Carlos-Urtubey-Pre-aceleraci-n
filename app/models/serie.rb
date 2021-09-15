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
class Serie < ApplicationRecord
    validates :title, :image, presence: true
    validates :title, uniqueness: true
    has_and_belongs_to_many :characters
    belongs_to :genre

    scope :filter_query_params, -> (params) {
        query = ""
        params.each do |param_name, value|
            unless param_name == "order"
                query += "#{param_name} LIKE ? AND "
            end
        end
        query = query[0...-5]
        if params.keys.include? "order"
            order = params.delete "order"
            if params.keys.length > 0
                final_query = params.values
                final_query.unshift(query)
                where(final_query).order(id: order)
            else
                order(id: order)
            end
        else
            final_query = params.values
            final_query.unshift(query)
            where(final_query)
        end
    }
end
