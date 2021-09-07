class SearchFacade
  def self.chars_from_fire_nation
    result = SearchService.get_all_chars_for_fire_nation
    result.map do |character|
      Character.new(character)
    end
  end

  def self.twenty_five_in_detail
    SearchFacade.chars_from_fire_nation[0..24]
  end
end
