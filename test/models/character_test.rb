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
require "test_helper"

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
