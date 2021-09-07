class Member
  attr_reader :id, :allies, :enemies, :photo_url, :name, :affiliation

  def initialize(attrs)
    @id = attrs[:_id]
    @allies = attrs[:allies]
    @enemies = attrs[:enemies]
    @photo_url = attrs[:photoUrl]
    @name = attrs[:name]
    @affiliation = attrs[:affiliation]
  end
end
