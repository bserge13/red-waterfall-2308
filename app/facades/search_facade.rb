class SearchFacade
  def self.members_by_nation(nation) 
    service = CharacterService.nation_members(nation) 
    service.map do |member_data|
      Member.new(member_data)
    end
  end
end