class ChangeMoviesSizeToBigint < ActiveRecord::Migration
  def change
      reversible do |dir|
        change_table :movies do |t|
          dir.up   { t.change :size, :bigint }
          dir.down { t.change :size, :string }
        end
      end
  end
end