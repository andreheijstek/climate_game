# Page object for the Floors "new" page
class FloorsNewPage < SitePrism::Page
  set_url "/floors/new"

  element :name, "#floor_name"
  element :submit, 'input[type="submit"][value="Create Floor"]'
  def create_floor(name:)
    self.name.set(name)
    submit.click
  end
end
