class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :breakfloor
      t.integer :guesses, :default => 0
      t.integer :eggs,:default => 2

      t.timestamps null: false
    end
  end
end
