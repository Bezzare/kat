class AddDefaultToMoviesCategory < ActiveRecord::Migration
  def change
    change_column :movies, :category, :string, :default => "movie"
  end
end
