require 'rails_helper'

RSpec.describe "homes/index", type: :view do
  before(:each) do
    assign(:homes, [
      Home.create!(
        description: "Description"
      ),
      Home.create!(
        description: "Description"
      )
    ])
  end

  it "renders a list of homes" do
    render
    assert_select "strong", text: "Description:", count: 2
  end
end
