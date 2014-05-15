class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :likes_count, default: 0
      t.integer :dislikes_count, default: 0

      t.timestamps
    end
  end
end
