Product.destroy_all
Review.destroy_all
50.times do |index|
  cost = rand(500)
  product = Product.create!(name: Faker::Food.dish, cost: cost, country_of_origin: Faker::Demographic.demonym)
  5.times do |index|
    rating = rand(5)
    Review.create!(author: Faker::FunnyName.two_word_name, rating: rating, content_body: Faker::Superhero.power, product_id: product.id)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
