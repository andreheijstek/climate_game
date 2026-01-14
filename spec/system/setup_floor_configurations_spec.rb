require 'rails_helper'

RSpec.describe "SetupFloorConfigurations", type: :system do
  it 'creates a new floor' do
    hnp = HomesNewPage.new
    hnp.load
    hnp.create_home(name: "Thuis")

    fnp = FloorsNewPage.new
    fnp.load
    fnp.create_floor(name: "Begane grond", home: "Thuis")

    expect(page).to have_content ("Begane grond")
  end
end
