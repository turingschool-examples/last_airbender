class Kingdom
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end

# Notes for instructor
# I'm actually completely unsure as to if these poros are correct.
# In fact I'm positive they're not. It feels wrong to me to begin
# grabbing information about the member, through the kingdom poros.
# I thought about creating another layer of member poros but
# was honestly unsure how to do that and access the information. I'm thinking
# I would need another facade for Member in order to do that?
