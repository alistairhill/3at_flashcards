class AddCardsIdsToGames < ActiveRecord::Migration
  def change
    add_column :games, :cards_ids, :text, default: []
    #method, table, column, type, default.
  end
end
