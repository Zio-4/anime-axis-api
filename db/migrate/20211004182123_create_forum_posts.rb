class CreateForumPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :forum_posts do |t|
      t.belongs_to :forum, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :anime, null: false, foreign_key: true
      t.belongs_to :manga, null: false, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
