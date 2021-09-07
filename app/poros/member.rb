class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(member_info)
    @name = member_info[:name]
    @allies = member_info[:allies]
    @enemies = member_info[:enemies]
    @affiliation = member_info[:affiliation]
    @photo = member_info[:photoUrl]
  end
end
