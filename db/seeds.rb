# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#=begin#
5.times do
city = City.create!(city_name: Faker::Address.city)
end

5.times do
dog_sitter = DogSitter.create!(first_name: Faker::Name.first_name,city_id: City.all.sample.id)
end

5.times do
dog = Dog.create!(name: Faker::Creature::Dog.name, city_id: City.all.sample.id)
end  

5.times do
stroll = Stroll.create!(date: Faker::Date.in_date_period, dog :dog, dog_sitter :dog_sitter)
end

5.times do
stroll_dog = StrollDog.create!(stroll_id: Stroll.all.sample.id, dog_id: Dog.all.sample.id)
end