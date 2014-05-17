class AddImage < ActiveRecord::Migration
  def change
    add_column :users, :image_location, :text, default: 'http://www.clipartbest.com/cliparts/nTE/XXK/nTEXXKkTA.png'
  end
end
