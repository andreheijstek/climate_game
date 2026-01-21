RSpec.describe "floors/show", type: :view do
  before(:each) do
    @home = create(:home, name: "Thuis")
    assign(:floor, create(:floor, name: "Name",
    home: @home))
    render
  end

  it "renders attributes in <p>" do
    expect(rendered).to match(/Name/)
  end

  it "shows the home this floor belongs to" do
    expect(rendered).to include "Part of home"
    expect(rendered).to include "Thuis"
  end

  it "links back to the home" do
    expect(rendered).to have_link 'Thuis', href: home_path(@home)
  end
end
