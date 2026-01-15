require 'rails_helper'

RSpec.describe "SetupRoomConfigurations", type: :system do
  it 'creates a new room' do
    hnp = HomesNewPage.new
    hnp.load
    hnp.create_home(name: "Thuis")

    fnp = FloorsNewPage.new
    fnp.load
    fnp.create_floor(name: "Begane grond", home: "Thuis")

    rnp = RoomsNewPage.new
    rnp.load
    rnp.create_room(name: "Woonkamer", floor: "Begane grond")

    expect(page).to have_content ("Woonkamer")
  end
end
