# Page object for the /homeconfiguration page
class HomeConfigurationPage < SitePrism::Page
  set_url "/home_configurations/new"

  element :home_field, "#home_field"

  element :submit_button, "#submit_form"
end
