puts "Destroying records"

Restaurant.destroy_all

puts "Creating Restaurants"

5.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Created #{resto.name}"
end

puts "Created #{Restaurant.count} restaurants"
