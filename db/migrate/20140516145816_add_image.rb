class AddImage < ActiveRecord::Migration
  def change
    add_column :users, :image_location, :text
  end
end
