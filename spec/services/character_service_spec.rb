require 'rails_helper'

RSpec.describe CharacterService do 
  describe 'class method', :vcr do
    it '#nation_members' do
      response = CharacterService.nation_members("Fire Nation")

      expect(response).to be_an Array  
      
    end 
  end
end