class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.text :body
      t.string :tagline
      t.string :banner_lg
      t.string :banner_sm
      t.timestamps
    end
  end
end
