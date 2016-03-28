require 'rails_helper'
RSpec.feature "adding feedback"  do

  scenario "allow a user to add a new feedback" do

    feedback = create(:feedback)

    visit feedbacks_path(feedback)

    expect(page).to have_content("bug")
    expect(page).to have_content("App title is undefined.")
  end

end