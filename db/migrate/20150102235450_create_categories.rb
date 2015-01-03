class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.timestamp
      t.string :name
      t.integer :post_id
    end
  end
end
