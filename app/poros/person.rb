class Person
  attr_reader :name, :photo_url, :allies, :enemies, :affiliation, :id

  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @id = data[:_id]
  end
end
