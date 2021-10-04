class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :image_url
      t.integer :score
      t.string :status
      t.string :type
      t.integer :mal_id

      t.timestamps
    end
  end
end
