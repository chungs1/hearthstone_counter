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
#

class Deck < ActiveRecord::Base
  has_and_belongs_to_many(:decks, join_table: 'deck_counters', foreign_key: 'deck_id', association_foreign_key: "deck_counter_id")
end
