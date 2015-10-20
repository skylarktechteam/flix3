class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :placement
      t.string :mpaa_rating
      t.integer :runtime
      t.string :poster_image
      t.boolean :has_subtitles
      t.decimal :ticket_price, precision:8, scale: 2
      t.date :release_date

      t.timestamps
    end
  end
end
