class AvatarFacade
  class << self
    def characters_by_nation(nation)
      chop = nation.split('_')
      chars = AvatarService.find_by_nation(chop.first)
      chars.map do |char|
        Character.new(char)
      end
    end
  end
end
