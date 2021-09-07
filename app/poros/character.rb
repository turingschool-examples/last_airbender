class Character
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :photoUrl,
              :affiliation

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:enemies]
    @photo = photo
    @affiliation = data[:affiliation]
  end
end
