class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :player1
      t.string :player2

      t.timestamps null: false
    end
  end
end
