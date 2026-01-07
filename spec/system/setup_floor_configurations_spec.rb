require 'rails_helper'

RSpec.describe "SetupFloorConfigurations", type: :system do
  it 'creates a new floor' do
    fnp = FloorsNewPage.new
    fnp.load
    fnp.create_floor(name: "Begane grond")

    expect(page).to have_content ("Begane grond")
  end
end
