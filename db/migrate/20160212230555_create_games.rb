class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :team1
      t.string :team2
      t.integer :team1_id
      t.integer :team2_id
      t.integer :team_1_score
      t.integer :team2_score

      t.timestamps null: false
    end
  end
end
