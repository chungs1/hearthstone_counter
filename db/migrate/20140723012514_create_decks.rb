class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
