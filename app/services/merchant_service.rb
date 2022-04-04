class MerchantService
  def self.conn
    Faraday.new('http://localhost:3000')
  end

  def self.get_all_merchants
    response = conn.get('/api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_details(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end
end