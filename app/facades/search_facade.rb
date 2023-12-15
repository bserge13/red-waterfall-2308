class SearchFacade
  def initialize(nation)
    @nation = nation
  end

  def members 
    service = CharacterService.new 

    json = service.members_by_nation(@nation)

    @members = json[:results].map do |member_data|
      Member.new(member_data)
    end
  end
end