# Page object for the Floors "new" page
class FloorsNewPage < SitePrism::Page
  set_url "/floors/new"

  element :name, "#floor_name"
  element :home, "#floor_home_id"
  element :submit, 'input[type="submit"][value="Create Floor"]'

  def create_floor(name:, home:)
    self.name.set(name)
    self.home.select(home)
    submit.click
  end
end
