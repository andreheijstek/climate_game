RSpec.describe "floors/index", type: :view do
  before(:each) do
    assign(:floors, [
      create(:floor, name: "Name"),
      create(:floor, name: "Name")
    ])
  end

  it "renders a list of floors" do
    render
    assert_select "strong", text: "Floorname:", count: 2
  end
end
