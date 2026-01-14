RSpec.describe "floors/show", type: :view do
  before(:each) do
    assign(:floor, create(:floor, name: "Name"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
