class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |col|
      col.string :name
      col.text :description
      col.timestamps
    end
  end
end
