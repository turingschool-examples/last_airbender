class Character
  attr_reader :name, :allies, :enemies, :affiliation
  def initialize(params)
    @name = params[:name]
    @allies = params[:allies]
    @enemies = params[:enemies]
    @affiliation = params[:affiliation]
  end
end
