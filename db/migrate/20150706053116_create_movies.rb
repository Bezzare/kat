class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :category
      t.string :link
      t.string :name
      t.string :size
      t.integer :files
      t.string :age
      t.integer :seed
      t.integer :leech
      t.decimal :imdb

      t.timestamps null: false
    end

    add_index :movies, :size
    add_index :movies, :age
    add_index :movies, :seed
    add_index :movies, :leech
    add_index :movies, :imdb
  end
end
