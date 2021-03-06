require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Create New Product'
    fill_in 'Name', :with => 'Tofu'
    fill_in 'Cost', :with => 10
    fill_in 'Country of origin', :with => "USA"
    click_on 'Create New Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Tofu'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create New Product'
    expect(page).to have_content "Name can't be blank"
  end
end