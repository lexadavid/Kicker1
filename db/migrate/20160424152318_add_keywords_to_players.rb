class AddKeywordsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :keywords, :text
  end
end
