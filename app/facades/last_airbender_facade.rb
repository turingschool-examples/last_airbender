class LastAirbenderFacade
  def self.total_characters(nation, pages)
    response = (1..pages).sum do |i|
      LastAirbenderService.characters(nation, i)
    end
  end

  def self.top_characters(nation)
    response = total_characters(nation, 2)
    response[0..24]
  end
end
