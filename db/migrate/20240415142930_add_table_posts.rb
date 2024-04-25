class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ''
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
      t.integer :answers_count, default: 0
      t.integer :likes_count, default: 0
      t.datetime :published_at

      t.timestamps
    end
  end
end