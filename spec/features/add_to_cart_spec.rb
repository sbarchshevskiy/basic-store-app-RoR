require 'rails_helper'

# require 'capybara/poltergeist'
# Capybara.javascript_driver = :poltergeist


RSpec.feature "Add items to cart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('furniture3.jpg'),
        quantity: 10,
        price: 64.99
      )
    
  end

  scenario "Shows updated cart" do
    # ACT
    visit root_path
    expect(page).to have_css '.products'
    click_button('Add')

    # DEBUG
    save_screenshot

    # VERIFY
    expect(page).to have_content('My Cart 1')

  end
end