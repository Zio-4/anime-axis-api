class CreateForumPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :forum_posts do |t|
      t.belongs_to :forum, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :anime, foreign_key: true
      t.belongs_to :manga, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
