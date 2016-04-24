# Preview all emails at http://localhost:3000/rails/mailers/game_mailer
class GameMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/game_mailer/game_win
  def game_win
    GameMailer.game_win
  end

end
