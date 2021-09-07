class Character
  attr_reader :name

  def initialize(char)
    @name = char[:name]
  end
end
