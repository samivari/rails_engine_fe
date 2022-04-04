class MerchantFacade
  def self.all_merchants
    results = MerchantService.get_all_merchants
    results[:data].map do |result|
      Merchant.new(result)
    end
  end

  def self.merchant_details(merchant_id)
    results = MerchantService.get_merchant_details(merchant_id)
    Merchant.new(results[:data])
  end

  def self.merchant_items(merchant_id)
    results = MerchantService.get_merchant_items(merchant_id)
    results[:data].map do |result|
      Item.new(result)
    end
  end
end
