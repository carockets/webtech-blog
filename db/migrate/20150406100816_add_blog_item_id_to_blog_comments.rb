class AddBlogItemIdToBlogComments < ActiveRecord::Migration
  def change
    add_column :blog_comments, :blog_item_id, :integer
  end
end
