class CreateJoinTablePlayerGame < ActiveRecord::Migration
  def change
    create_join_table :players, :games do |t|
       t.index [:player_id, :game_id]
       t.index [:game_id, :player_id]
    end
  end
end
