class Player < ActiveRecord::Base

  def games
    Game.where('player1_id = :player_id or player2_id = :player_id
      or player3_id = :player_id or player4_id = :player_id',
      player_id: self.id).distinct
  end

  def wins
    win_sql = "((player1_id = :player_id or player2_id = :player_id) and team1_score > team2_score)" +
    "or ((player3_id = :player_id or player4_id = :player_id) and team2_score > team1_score)"
    Game.where(win_sql, player_id: self.id)
  end

  def win_ratio
    games.count.to_f.zero? ? 0 : ((wins.count / (games.count.to_f)).round(1) * 100)
  end
end
