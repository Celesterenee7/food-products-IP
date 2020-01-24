require 'rails_helper'

describe Product do
  it { should have_many :reviews }
end

describe Product do
    it { should validate_presence_of :name }
    it { should validate_presence_of :cost }
    it { should validate_presence_of :country_of_origin }
end

describe Product do
    it("titleizes the name of an product") do
        product = Product.create({name: "kale", cost: 3.99, country_of_origin: "Portugal"})
        expect(product.name).to eq "Kale"
end
  
end