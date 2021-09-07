class SearchFacade
  def self.chars_from_fire_nation
    result = SearchService.get_all_chars_for_fire_nation
    require "pry"; binding.pry
    result.map do |char|
      Character.new(char)
    end
    require "pry"; binding.pry
  end
end
