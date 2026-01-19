require 'rails_helper'

RSpec.describe "rooms/show", type: :view do
  before(:each) do
    @floor = create(:floor, name: "begane grond")
    assign(:room, create(:room, name: "woonkamer", floor: @floor))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/woonkamer/)
  end

  it "shows the floor this room belongs to" do
    render
    expect(rendered).to include "Part of floor"
    expect(rendered).to include "begane grond"
    expect(rendered).to include "woonkamer"
  end

  it "links back to the floor" do
    render
    expect(rendered).to have_link 'begane grond', href: floor_path(@floor)
  end
end
