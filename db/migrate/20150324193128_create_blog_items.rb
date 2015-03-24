class CreateBlogItems < ActiveRecord::Migration
  def change
    create_table :blog_items do |t|
      t.string :name
      t.text :content
      t.string :tags
      t.datetime :time

      t.timestamps
    end
  end
end
