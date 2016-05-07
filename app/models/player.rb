class Player < ActiveRecord::Base

  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  before_save :set_keywords

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
    games.count.to_f.zero? ? 0.0 : ((wins.count / (games.count.to_f)).round(1) * 100)
  end

  def best_performer?
    return @player.id == @players.sort_by{|player| player.win_ratio}.reverse.first.id
  end

  def country?
    country.present?
  end

  def set_keywords
    self.keywords = [first_name, last_name, email, country, position].map {|f| f.downcase}.join(' ')
  end
end
