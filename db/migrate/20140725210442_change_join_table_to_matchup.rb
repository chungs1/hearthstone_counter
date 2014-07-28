class ChangeJoinTableToMatchup < ActiveRecord::Migration
  def change
    drop_table :deck_counters

    create_table :matchups, id: false do |t|
      t.integer "strong_id", :null => false
      t.integer "weak_id", :null => false
      t.integer "thumbs_up", :default => 0
      t.integer "thumbs_down", :default => 0
    end
  end
end
