# Mario's Speciality Food Products - Independent Project
#### Rails Authentication and Authorization for Epicodus, 1/24/20
#### By Celeste Renee Morton
## Description:
The concept for this project is to build a website for Mario's Specialty Food Products that will track unique visitors each day using the most comprehensive validations and callbacks to ensure information is properly saved and formatted in the database. It will also allow Mario to create users and restrict what they can and cannot do within the site. Only admins have access to full CRUD functionality and can edit, update , or delete products from the website. Non admins will only be allowed to see available products as well as leave a review for a product.

## User Stories:
* As an admin, I should be able to log in and log out of the application.
* As an admin, I should be able to add, update and delete products.
* As an admin, I should be able to add reviews.
* As an admin, I want to ensure that other users don't have access to CRUD functionality.
* As a user, I want to be able to create an account and add a review to a product. (A product can have many comments.) This is the only CRUD functionality a user can have.

## Specifications:

|Spec|Input|Output|
|-|-|-|
|A user admin should be able to add a new product to the site from the home page|Click on Create New Product, type in name, cost, country of origin and hit submit|Product is now listed on the home page with a message showing "Product Successfully Added!"|
|A user admin should be able to update a product|Click on product name and click Edit, update product as needed and hit submit|Product changes are now reflected on the site|
|A user admin should be able to delete a product|Click on product name and click Delete Product|Product is no longer listed on the site|
|A user admin should be able to leave a review for a product|Click on product name and Add a Review, enter in author name, rating, and content - hit submit|Reviews are now listed by author name on the product page|
|A user admin should be able to restrict what other users can see with admin control|Create new user and leave admin box unchecked|Non admin users can only see products and leave reviews but they cannot edit, delete, or update products from the site|

## Setup/Installation Requirements
* Install Ruby 2.5.7 on your machine
* Install SQL 12.1 with Postgres on your machine
* Clone the git repository at https://github.com/Celesterenee7/food-products-IP
* Navigate to folder and run `bundle install` from terminal
* In the terminal navigate to the folder and run `rake db:create` to create the database
* Next run `rake db:migrate` to get the tables created
* Then type in `rake db:seed` within the terminal to generate a series of values for products and reviews
* Lastly type in `rails s` to start the server and navigate to localhost:3000 on your browser to view the application

## Support and contact details
Please contact me directly with any questions or concerns. You can reach me at 541-555-5555
## Technologies Used
_This program utilized:_
* _RUBY_
* _RAILS_
* _PSQL_
* _CSS_
* _HTML_
_and was built in Visiual Studio Code_
### Copyright (c) 2020 Celeste Renee Morton
This software is installed under MIT license.