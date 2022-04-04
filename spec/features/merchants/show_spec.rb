require 'rails_helper'

RSpec.describe 'Merchant Show Page' do
  describe 'View' do
    it 'has a title and list items', :vcr do
      visit merchant_path(1)

      expect(page).to have_content('Schroeder-Jerde')
      expect(page).to have_content('Item Nemo Facere')
    end
  end
end
