class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :gif1
      t.text :gif2
      t.text :gif3
      t.text :gif4
      t.integer :score
      t.boolean :finished
      t.datetime :created_at
      t.integer :creator_id
      t.integer :player_id
    end
  end
end
