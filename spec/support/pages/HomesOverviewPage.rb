# Page object for the /homeconfiguration page
class HomesOverviewPage < SitePrism::Page
  set_url "/homes"

  element :new_home_link, "a", text: "New home"
end
