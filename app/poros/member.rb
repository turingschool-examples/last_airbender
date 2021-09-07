class Member
  attr_reader :name, :enemies, :allies, :photo, :affiliation

  def initialize(member_details)
    @name = member_details[:name]
    @enemies = member_details[:enemies]
    @allies = member_details[:allies]
    @photo = member_details[:photo]
    @affiliation = member_details[:affiliation]
  end
end
