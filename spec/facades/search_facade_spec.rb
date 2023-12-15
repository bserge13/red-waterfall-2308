require 'rails_helper'

RSpec.describe SearchFacade do 
  describe '#members_by_nation', :vcr do 
    it 'returns an array of Member objects' do 
      members = SearchFacade.members_by_nation("Fire Nation")

      expect(members).to be_an Array 
      expect(members.first).to be_a Member 
      expect(members.first.name).to be_a String
      expect(members.first.enemies).to be_an Array
      expect(members.first.allies).to be_an Array
    end
  end
end