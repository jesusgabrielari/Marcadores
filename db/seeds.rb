# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Archetype.destroy_all
Category.destroy_all
Marker.destroy_all

20.times do
    Archetype.create!(
      name: Faker::TvShows::FamilyGuy.quote
    )
end

10.times do
    Category.create!(
      name: Faker::TvShows::FamilyGuy.quote,
      status: Random.rand(0..1)
    )
end

10.times do
    Category.create!(
      name: Faker::TvShows::FamilyGuy.quote,
      status: Random.rand(0..1),
      category_id: Random.rand(1..10),
    )
end

20.times do
    Marker.create(
        name: Faker::TvShows::FamilyGuy.quote,
        category_id: Random.rand(1..20),
        archetype_id: Random.rand(1..20)
    )
end