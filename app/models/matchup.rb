# == Schema Information
#
# Table name: matchups
#
#  strong_id   :integer          not null
#  weak_id     :integer          not null
#  thumbs_up   :integer          default(0)
#  thumbs_down :integer          default(0)
#

class Matchup < ActiveRecord::Base
  belongs_to :strong, class_name: 'Deck'
  belongs_to :weak, class_name: 'Deck'

  def percentage
    thumbs_up/thumbs_down rescue thumbs_up
  end
end
