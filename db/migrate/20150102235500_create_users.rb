class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :googleplus
      t.string :twitch
      t.timestamps
    end
  end
end
