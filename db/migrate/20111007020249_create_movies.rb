class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :user_id
      t.string :movie_one
      t.string :movie_two
      t.string :movie_three
      t.string :movie_four
      t.string :movie_five

      t.timestamps
    end
  end
end
