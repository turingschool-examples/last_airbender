class Person
  attr_reader :name,
              :id,
              :allies,
              :enemies,
              :photo,
              :affiliation
  def initialize(data)
    @name = data[:name]
    @id = data[:id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
  end
end
