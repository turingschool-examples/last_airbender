class AvatarService
  def initialize; end

  def self.render_request(search)
    JSON.parse(
      Faraday.get(
        "#{base_url}perPage=100&affiliation=#{reformat_search(search)}+NATION")
      .body)
  end

  def self.base_url
    'https://last-airbender-api.herokuapp.com/api/v1/characters?'
  end

  def self.reformat_search(search_criteria)
    search_criteria.split('_')[0].upcase
  end

  def self.characters(request_body)
    request_body.map { |character| character_object(character) }
  end

  def self.character_object(character)
    character_hash = Hash.new('')
    character_hash[:name] = character['name']
    character_hash[:affiliation] = character['affiliation']
    character_hash[:photo_url] = character['photoUrl']
    character_hash[:allies] = character['allies']
    character_hash[:enemies] = character['enemies']
    character_hash
  end
end
