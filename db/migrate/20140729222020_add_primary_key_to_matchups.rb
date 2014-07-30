class AddPrimaryKeyToMatchups < ActiveRecord::Migration
  def change
    add_column :matchups, :id, :primary_key
  end
end
