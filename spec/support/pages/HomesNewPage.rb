# Page object for the Homes "new" page
class HomesNewPage < SitePrism::Page
  set_url "/homes/new"

  element :name, "#home_name"
  element :submit, 'input[type="submit"][value="Create Home"]'

  def create_home(name:)
    self.name.set(name)
    submit.click
  end
end
