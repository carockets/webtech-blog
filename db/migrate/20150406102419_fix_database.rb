class FixDatabase < ActiveRecord::Migration
  def change
  	rename_column :blog_comments, :blog_item_id, :blog_items_id
  end
end
