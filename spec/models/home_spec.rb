# require 'rails_helper'

RSpec.describe Home, type: :model do
  describe 'associations' do
    it { should have_many(:floors).dependent(:destroy) }
  end

  describe 'with floors' do
    let(:home) { create(:home) }
    let!(:floor1) { create(:floor, home: home) }
    let!(:floor2) { create(:floor, home: home) }

    it 'returns all associated floors' do
      expect(home.floors).to match_array([ floor1, floor2 ])
    end

    it 'destroys associated floors when home is destroyed' do
      expect { home.destroy }.to change { Floor.count }.by(-2)
    end
  end
end
