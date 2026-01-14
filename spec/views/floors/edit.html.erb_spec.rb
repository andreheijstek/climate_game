RSpec.describe "floors/edit", type: :view do
  let(:floor) {
    create(:floor, name: "MyString")
  }

  before(:each) do
    assign(:floor, floor)
  end

  it "renders the edit floor form" do
    render

    assert_select "form[action=?][method=?]", floor_path(floor), "post" do
      assert_select "input[name=?]", "floor[name]"
    end
  end
end
