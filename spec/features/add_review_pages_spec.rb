require 'rails_helper'

describe "the add a review process" do
  it "adds a review to a product" do
    project = Product.create({ name: "Tofu", cost: 10, country_of_origin: "USA "})
    visit products_path
    click_link "Tofu"
    click_link "Add a review"
    fill_in 'Author', :with => 'Meika Meika'
    fill_in 'Rating', :with => 4
    fill_in 'Content body', :with => "gjfkagfsjafgajfgjgkjsgjkgfjgdsjfjfhaskjhfkjshjkashfakjf"
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
    expect(page).to have_content('Meika Meika')
 end

end