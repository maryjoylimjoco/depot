require 'rails_helper'

describe 'Checkout Process', type: :feature do
  describe 'Cart Page' do
    context 'when there are products in the store' do
      let!(:product) { FactoryGirl.create(:product, title: 'Ticketbase') }

      before do
        visit '/'
        click_button 'Add to Cart'
      end

      it 'displays the products in the cart' do
        expect(page).to have_content 'Ticketbase'
      end
    end

    context 'when there are multiple products in the store' do
      let!(:product) { FactoryGirl.create(:product, title: 'Ticketbase1') }
      let!(:product2) { FactoryGirl.create(:product, id: 123, title: 'Ticketbase2') }

      before do
        visit '/'
        find_button(id: 'product123').click
      end

      it 'displays the products in the cart' do
        expect(page).to have_content 'Ticketbase2'
      end
    end
  end
end
