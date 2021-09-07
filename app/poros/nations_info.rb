class NationsInfo
  attr_reader :name,
              :allies,
              :enemies,
              :photo,
              :affiliation

  def initialize(info)
    @name        = info[:name]
    @allies      = info[:allies]
    @enemies     = info[:enemies]
    @photo       = info[:photoUrl]
    @affiliation = info[:affiliation]
  end
end