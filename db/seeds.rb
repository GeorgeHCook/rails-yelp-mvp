# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning databse'
Restaurant.destroy_all

puts 'Creating Database'
mayflower = { name: 'The Mayflower', address: 'Bristol Town Center', category: 'chinese', phone_number: '123' }
tipo00 = { name: 'Tipo00', address: 'little bourke street', category: 'italian', phone_number: '234' }
tomono = { name: 'Tomono Ramen', address: 'old market', category: 'japanese', phone_number: '345' }
little_french = { name: 'LittleFrench', address: 'westbury', category: 'french', phone_number: '456' }
strawberry_theif = { name: 'The Strawberry Theif', address: 'Bristol', category: 'belgian', phone_number: '567' }

[mayflower, tipo00, tomono, little_french, strawberry_theif].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'finished!'
