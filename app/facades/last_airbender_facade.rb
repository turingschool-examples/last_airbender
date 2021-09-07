class LastAirbenderFacade
  def self.total_characters(nation, pages = 5)
    response = (1..pages).sum do |i|
      LastAirbenderService.characters(nation, i)
    end
    create_character_objects(response)
  end

  def self.top_characters(nation)
    response = total_characters(nation, 2)
    response[0..24]
  end

  def self.create_character_objects(response)
    response.map { |data| Character.new(data) }
  end
end
