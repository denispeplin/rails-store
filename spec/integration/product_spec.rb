require 'spec_helper'

describe "products" do
  it 'should be created from products page' do
    @brand = FactoryGirl.create(:brand)
    # HABTM, easy way:
    @category = FactoryGirl.create(:category, brands: [@brand])
    visit products_path
    fill_in 'Name', with: 'My Product'
    fill_in 'Price', with: '100'
    select @brand.name, from: 'Brand'
    select @category.name, from: 'Category'
    click_button 'Create Product'
    # Redirects anyway in browser simulation mode
    #assert_equal products_path, current_path
    #page.should have_selector('tbody#products', text: 'My Product')
    page.should have_selector('.product_name', text: 'My Product')
  end

  it "should be deleted from products page" do
    @product = FactoryGirl.create(:product)
    visit products_path
    page.should have_selector('tbody#products', text: @product.name)
    within "tr#product_#{@product.id}" do
      click_link 'Destroy'
    end
    page.should_not have_selector('tbody#products', text: @product.name)
  end
end
