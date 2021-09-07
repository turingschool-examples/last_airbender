class KingdomFacade
  def self.search(element, name)
    kingdom_data = AirBenderService.search_kingdoms(element, name)
    kingdom_data[:data].map do |kingdom|
      Kingdom.new(kingdom)
    end
  end
end

# Notes for instructor
# This is where I was getting an error message in the server most of the time.
# "No implicit conversion of Symbol into Integer"
# I don't know if it has something to do with the way I'm setting up my AirBender Service
# or the way I'm passing in two arguments
