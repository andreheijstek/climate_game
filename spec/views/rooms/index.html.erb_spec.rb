require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      create(:room, name: "Name"),
      create(:room, name: "Name")
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "strong", text: "Name:", count: 2
  end
end
