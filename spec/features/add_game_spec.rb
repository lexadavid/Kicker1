require 'rails_helper'
RSpec.feature "adding players"  do

  scenario "allow a user to add a new player" do

    player = create(:player, country: "Russia")

    visit player_path(player)

    expect(page).to have_content("John")
    expect(page).to have_content("Doe")
    expect(page).to have_content("david@wunder.org")
    expect(page).to have_content("Russia")
    expect(page).to have_content("Attacker")
  end

end