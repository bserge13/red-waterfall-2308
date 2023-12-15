require 'rails_helper'

RSpec.describe Member do 
  describe 'Initialize' do 
    it 'exists with attributes' do 
      member_data = {
        "allies": [
        "Fire Nation"
        ],
        "enemies": [
        "Aang"
        ],
        "id": "5cf5679a915ecad153ab68cc",
        "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        "name": "Afiko",
        "affiliation": "Fire Nation"
      }

      member = Member.new(member_data)

      expect(member).to be_a Member
      expect(member.id).to eq("5cf5679a915ecad153ab68cc")
      expect(member.name).to eq("Afiko")
      expect(member.allies).to eq(["Fire Nation"])
      expect(member.enemies).to eq(["Aang"])
      expect(member.affiliation).to eq("Fire Nation")
    end
  end
end