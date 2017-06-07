class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|

      t.string :title
      t.string :author
      t.text :idea
      t.string :user_id
      t.integer :likeincrement
      t.string :user_ip
      t.string :addresses
      t.timestamps null: false
    end
  end
end