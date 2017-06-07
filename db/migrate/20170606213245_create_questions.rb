class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :author
      t.text :question
      t.string :user_id
      t.integer :likeincrement
      t.string :user_ip
      t.string :addresses
      t.timestamps null: false
    end
  end
end
