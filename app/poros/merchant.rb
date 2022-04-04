class Merchant
  attr_reader :id, :name

  def initialize(result)
    @id = result[:id]
    @name = result[:attributes][:name]
  end
end
