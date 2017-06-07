class CreateQuestioncomments < ActiveRecord::Migration
def change
    create_table :questioncomments do |t|
      t.integer :question_id
      t.string :author
      t.text :comment
      t.timestamps null: false
    end
  end
end