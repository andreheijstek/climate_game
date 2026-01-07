require 'rails_helper'

RSpec.describe "floors/index", type: :view do
  before(:each) do
    assign(:floors, [
      Floor.create!(
        name: "Name"
      ),
      Floor.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of floors" do
    render
    assert_select "strong", text: "Name:", count: 2
  end
end
