# Page object for the /homeconfiguration page
class HomesNewPage < SitePrism::Page
  set_url "/homes/new"

  element :description_field, "#home_description"
  element :create_home_button, 'input[type="submit"][value="Create Home"]'
end
