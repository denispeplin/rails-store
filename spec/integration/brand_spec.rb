describe "brands" do
  it "should have a New link in index page" do
    visit brands_path
    click_link "New"
    assert_equal current_path, new_brand_path
  end

  it "should create new brand" do
    @category = FactoryGirl.create(:category)
    visit new_brand_path
    fill_in 'Name', with: 'My Brand'
    select @category.name, from: 'Categories'
    click_button 'Create Brand'
    page.should have_selector(".brand_name", :text => "My Brand")
  end
end
