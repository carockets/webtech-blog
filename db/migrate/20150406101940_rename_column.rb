class RenameColumn < ActiveRecord::Migration
  def change
  	change_table :blog_comments do |t|
      t.rename :blog_item_id, :blog_items_id
   end
  end
end
