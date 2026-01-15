require 'rails_helper'

RSpec.describe Floor, type: :model do
  describe 'associations' do
    it { should have_many(:rooms).dependent(:destroy) }
  end

  describe 'with rooms' do
    let(:floor) { create(:floor) }
    let!(:room1) { create(:room, floor: floor) }
    let!(:room2) { create(:room, floor: floor) }

    it 'returns all associated rooms' do
      expect(floor.rooms).to match_array([ room1, room2 ])
    end

    it 'destroys associated rooms when floor is destroyed' do
      expect { floor.destroy }.to change { Room.count }.by(-2)
    end
  end
end
