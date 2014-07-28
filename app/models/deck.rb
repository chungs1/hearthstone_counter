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

class Deck < ActiveRecord::Base
  has_and_belongs_to_many :strong_against, class_name: 'Deck', join_table: 'matchups', foreign_key: 'strong_id', association_foreign_key: "weak_id"
  has_and_belongs_to_many :weak_against, class_name: 'Deck', join_table: 'matchups', foreign_key: 'weak_id', association_foreign_key: "strong_id"

  before_save {|deck| deck.hero = deck.hero.downcase }

  validates_presence_of :name, :hero
end
