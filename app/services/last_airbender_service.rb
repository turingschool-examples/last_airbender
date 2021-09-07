class LastAirbenderService < ApiService
  def self.fire_nation
    get_link("?perPage=200&affiliation=Fire+Nation")
  end
end
