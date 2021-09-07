class Member
  attr_reader :name, :allies, :enemies, :affiliation, :photo_url
  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo_url = data[:photoUrl]
  end
end