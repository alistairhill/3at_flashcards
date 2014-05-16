class AddImage < ActiveRecord::Migration
  def change
    add_column :users, :image_location, :text, default: 'http://www.clipartbest.com/cliparts/yio/err/yioerr66T.jpeg'
  end
end
