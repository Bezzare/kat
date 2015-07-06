class DelMoviesCategory < ActiveRecord::Migration
  def change
    remove_column :movies, :category
  end
end
