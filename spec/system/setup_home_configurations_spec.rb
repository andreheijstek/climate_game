require 'rails_helper'

RSpec.describe "SetupHomeConfigurations", type: :system do
  it 'creates a new home' do
    visit "/homes"

    hop = HomesOverviewPage.new
    hop.load
    save_page("tmp/page.html")
    hop.new_home_link.click

    hnp = HomesNewPage.new
    hnp.description_field.set "Thuis"
    hnp.create_home_button.click

    hop.load
    expect(page).to have_content ("Thuis")
  end
end
