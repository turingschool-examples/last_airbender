class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :picture

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies].empty? ? 'None' : data[:allies]
    @enemies = data[:enemies].empty? ? 'None' : data[:enemies]
    @affiliation = data[:affiliation].nil? ? 'No Affiliations' : data[:affiliation]
    @picture = data[:photoUrl]
  end
end
