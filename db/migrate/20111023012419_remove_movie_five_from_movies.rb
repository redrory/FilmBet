class RemoveMovieFiveFromMovies < ActiveRecord::Migration
  def up
    remove_column :movies, :movie_five
  end

  def down
    add_column :movies, :movie_five, :string
  end
end
