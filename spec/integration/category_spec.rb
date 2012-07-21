describe "categories" do
  it "should have a New link in index page" do
    visit categories_path
    click_link "New"
    assert_equal current_path, new_category_path
  end

  it "should create new category" do
    @brand = FactoryGirl.create(:brand)
    visit new_category_path
    fill_in 'Name', with: 'My Category'
    select @brand.name, from: 'Brands'
    click_button 'Create Category'
    page.should have_selector(".category_name", :text => "My Category")
  end
end
