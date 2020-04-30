require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all

50.times do
  Dogsitter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

50.times do
  Dog.create!(
    dog_name: Faker::Creature::Dog.name
  )
end

15.times do
  City.create!(
    city_name: Faker::Address.city
  )
end

100.times do
  Stroll.create!(
    dog_id: Dog.all.sample.id,
    dogsitter_id: Dogsitter.all.sample.id,
    city_id: City.all.sample.id
  )
end