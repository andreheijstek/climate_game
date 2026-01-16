RSpec.describe "floors/show", type: :view do
  before(:each) do
    assign(:floor, create(:floor, name: "Name"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end

  it "shows the home this floor belongs to" do
    floor = create(
      :floor,
      name: "begane grond",
      home: create(:home, name: "Thuis")
    )
    render
    expect(rendered).to include "Part of home"
    expect(rendered).to include "MyString"
  end

  # it "links back to the home" do
  # end
  #
  # TODO: Refactor, repeating statements can move to before block
end
