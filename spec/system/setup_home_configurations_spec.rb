require 'rails_helper'

RSpec.describe "SetupHomeConfigurations", type: :system do
  it 'creates a new home' do
    hnp = HomesNewPage.new
    hnp.load
    hnp.create_home(name: "Thuis")

    expect(page).to have_content ("Thuis")
  end
end
