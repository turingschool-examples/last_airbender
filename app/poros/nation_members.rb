class NationMembers
  attr_reader :name,
              :photo,
              :allies,
              :enemies,
              :affiliations

  def initialize(data)
    @name =         data[:name]
    @photo =        data[:photoUrl]
    @allies =       data[:allies][0]
    @enemies =      data[:enemies][0]
    @affiliations = data[:affiliations]
  end
end
