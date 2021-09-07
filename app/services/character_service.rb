class CharacterService < ApiService

  def affiliation(nation)
    response = get_data("https://last-airbender-api.herokuapp.com/api/v1/characters").get do |f|
      f.params['affiliation'] = nation
    end
    get_json(response)
  end
end