require 'rails_helper'

RSpec.describe "floors/show", type: :view do
  before(:each) do
    assign(:floor, Floor.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
