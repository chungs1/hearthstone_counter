# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

decks = [
  { name: 'Token Druid', hero: 'druid', link: 'http://www.liquidhearth.com/staff/Hayl_Storm/tokens.png' },
  { name: 'Kolento', hero: 'hunter', link: 'http://i.imgur.com/Po82Gqz.png' },
  { name: 'Frost Giants', hero: 'mage', link: 'http://www.teamliquid.net/staff/monk/hearthstone/yearinreview2013/FrostGiants_150.png' },
  { name: 'Control Paladin', hero: 'paladin', link: 'http://www.teamliquid.net/staff/monk/hearthstone/kyo_pally/newpally.jpg' },
  { name: 'Control Priest', hero: 'priest', link: 'http://hearthstoneplayers.com/wp-content/uploads/2014/03/decklist-controlpriest.jpg' },
  { name: 'Miracle Rogue', hero: 'rogue', link: 'http://oi41.tinypic.com/2ilh6r8.jpg' },
  { name: 'Custom Shaman', hero: 'shaman', link: 'http://i.imgur.com/kTYmUbI.png' },
  { name: 'Zoo', hero: 'warlock', link: 'http://i.imgur.com/ZK6DsGq.png' },
  { name: 'Control Warrior', hero: 'warrior', link: 'http://hearthstoneplayers.com/wp-content/uploads/2014/03/warrior-control2.jpg'}
]

decks.each do |deck|
  deck[:description] = ''
  Deck.where(deck).first_or_create
end