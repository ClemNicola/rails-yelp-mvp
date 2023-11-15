require 'faker'

puts "Destroy Restaurant"
Restaurant.destroy_all

puts "Creating restaurants ..."

20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

puts "20 restaurants created"
