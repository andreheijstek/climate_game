# Page object for the Rooms "new" page
class RoomsNewPage < SitePrism::Page
  set_url "/rooms/new"

  element :name, "#room_name"
  element :floor, "#room_floor_id"
  element :submit, 'input[type="submit"][value="Create Room"]'

  def create_room(name:, floor:)
    self.name.set(name)
    self.floor.select(floor)
    submit.click
  end
end
