# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(
  [
    {uuid: "first", name: "Jonas", email: "jonas@email.com"}
  ]
)

Item.create([
              { uuid: "sample-uuid-1", price: 100.50, brand: "BrandA", photo_url: "http://example.com/photo1.jpg", status: 1, user: User.first },
              { uuid: "sample-uuid-2", price: 200.25, brand: "BrandB", photo_url: "http://example.com/photo2.jpg", status: 2, user: User.first }
            ])
