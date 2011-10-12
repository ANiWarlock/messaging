class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :content
      t.integer :user_from
      t.integer :user_to

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
