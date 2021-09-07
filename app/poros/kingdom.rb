class Kingdom
  attr_reader :total,
              :first_25

  def initialize(data)
    @total = data.count
    @first_25 = data(0..24)
  end
end
