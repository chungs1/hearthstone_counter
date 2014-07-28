module ApplicationHelper
  def heroes_nest
    [['druid', 'hunter', 'mage'], ['paladin', 'priest', 'rogue'], ['shaman', 'warlock', 'warrior']]
  end

  def heroes
    ['druid', 'hunter', 'mage', 'paladin', 'priest', 'rogue', 'shaman', 'warlock', 'warrior']
  end

  def heroes_capped
    heroes.collect { |hero| hero.capitalize }
  end
end
