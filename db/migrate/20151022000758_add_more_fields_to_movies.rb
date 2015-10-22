class AddMoreFieldsToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :producer, :string
    add_column :movies, :studio, :string
  end
end
