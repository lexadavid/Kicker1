class GameMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.game_mailer.game_win.subject
  default from: "david@wunder.org"
  def game_win
    @greeting = "Hi"

    mail to: game.player1.email,
    subject: "Congrats #{game.player1.first_name}!"
  end
end
