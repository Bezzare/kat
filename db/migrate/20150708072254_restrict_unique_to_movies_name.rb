class RestrictUniqueToMoviesName < ActiveRecord::Migration
  def change
    add_index :movies, :name, unique: true
  end
end
