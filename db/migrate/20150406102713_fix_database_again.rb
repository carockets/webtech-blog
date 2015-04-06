class FixDatabaseAgain < ActiveRecord::Migration
  def change
  	rename_column :blog_comments, :blog_items_id, :blog_item_id
  end
end
