class CreateIdeacomments < ActiveRecord::Migration
  def change
    create_table :ideacomments do |t|
      t.integer :idea_id
      t.string :author
      t.text :comment
      t.timestamps null: false
    end
  end
end
