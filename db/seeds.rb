puts "destroying all entries... :("
Surfboard.destroy_all
Booking.destroy_all
User.destroy_all



puts "DB emptied! :)"

puts "Seeding 10 random users.."

10.times do 
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::String.random(length: 8),
    role: ["customer","owner"].sample,
  )
  puts "Created -- "
end

puts "Seeding 10 random surfboards.."

10.times do
  Surfboard.create!(
    name: Faker::Superhero.name,  
    category: ["longboard","shortboard","fish","hybrid","malibu","gun"].sample,
    location: Faker::Address.city,
    availability: true,
    price: rand(1..25),
    description: Faker::Quote.famous_last_words,
    user: User.all.sample
  )
  puts "Created 1 Surfboard -- "
end

puts "Seeding 10 random bookings.."

10.times do
  Booking.create!(
    surfboard: Surfboard.all.sample,
    user: User.all.sample,
    renting_period: rand(1..24),
    total_price: rand(20..200),
  )
  puts "doing bookings..YAY"
end

puts "Seeding completed. Well done."