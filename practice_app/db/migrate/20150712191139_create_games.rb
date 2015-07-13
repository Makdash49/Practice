class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :player
      t.integer :breakfloor
      t.integer :eggs,:default => 2

      t.timestamps null: false
    end
  end
end
