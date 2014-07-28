# == Schema Information
#
# Table name: decks
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  link        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  hero        :string(255)
#

require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
