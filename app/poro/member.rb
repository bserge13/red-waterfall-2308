class Member
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :affiliation,
              :photo
  
  def initialize(data)
    @id = data[:id]
    @name = data[:name]

    @allies = if data[:allies].empty?
      "None"
    else 
      data[:allies]
    end 

    @enemies = if data[:enemies].empty?
      "None"
    else 
      data[:enemies]
    end 

    @affiliation = data[:affiliation]

    @photo = if data[:photoUrl] == nil 
      "No Photo"
    else 
      data[:photoUrl]
    end 
  end
end