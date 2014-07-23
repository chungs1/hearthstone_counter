class CreateDecksCounters < ActiveRecord::Migration
  def change
    create_table :deck_counters, id: false do |t|
      t.integer "deck_id", :null => false
      t.integer "deck_counter_id", :null => false
    end
  end
end
