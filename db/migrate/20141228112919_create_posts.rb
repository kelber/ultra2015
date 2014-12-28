class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_category
      t.string :title
      t.text :post

      t.timestamps
    end
  end
end
