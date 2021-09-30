class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :language
      t.string :runtime
      t.integer :rating
      t.string :image
      t.string :video_url
      t.string :genre
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
