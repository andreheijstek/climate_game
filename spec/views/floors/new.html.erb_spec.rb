require 'rails_helper'

RSpec.describe "floors/new", type: :view do
  before(:each) do
    assign(:floor, Floor.new(
      name: "MyString"
    ))
  end

  it "renders new floor form" do
    render

    assert_select "form[action=?][method=?]", floors_path, "post" do
      assert_select "input[name=?]", "floor[name]"
    end
  end
end
