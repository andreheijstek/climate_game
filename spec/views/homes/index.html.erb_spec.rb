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
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
