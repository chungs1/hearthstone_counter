class AddHeroToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :hero, :string
  end
end
