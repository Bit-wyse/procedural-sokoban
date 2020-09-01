class CreatePuzzles < ActiveRecord::Migration[6.0]
  def change
    create_table :puzzles do |t|
      t.string :name
      t.text :game

      t.timestamps
    end
  end
end
