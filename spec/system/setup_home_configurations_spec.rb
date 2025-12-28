require 'rails_helper'

RSpec.describe "SetupHomeConfigurations", type: :system do
  it 'creates a new home' do
    visit "/home_configurations/new"

    HomeConfigurationPage.new.tap do |n|
      n.home.set "thuis"
      n.submit_button.click
    end
    visit '/home'
    expect(page).to have_content ("thuis")
  end
end
