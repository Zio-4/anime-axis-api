class CreateMangaLists < ActiveRecord::Migration[6.1]
  def change
    create_table :manga_lists do |t|
      t.belongs_to :manga, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
