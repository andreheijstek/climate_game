# Page object for the Homes "new" page
class HomesNewPage < SitePrism::Page
  set_url "/homes/new"

  element :description, "#home_description"
  element :submit, 'input[type="submit"][value="Create Home"]'

  def create_home(description:)
    self.description.set(description)
    submit.click
  end
end
