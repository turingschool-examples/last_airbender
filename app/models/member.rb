class Member < ApplicationRecord
    attr_reader :name, :role, :party, :district
    def initialize(member_data)
        @name = member_data[:name]
        @allies = member_data[:allies]
        @enemies = member_data[:enemies]
        @affiliation = member_data[:affiliation]
    end
end
