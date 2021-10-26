class AvatarService
  class << self
    def find_by_nation(nation, page = 1)
      AvatarClient.fetch("/api/v1/characters?perPage=25&page=#{page}&affiliation=#{nation}")
    end
  end
end
