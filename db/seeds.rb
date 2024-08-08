# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Garden.destroy_all
Plant.destroy_all
Chore.destroy_all

names = %w(Water Mist Clean Feed Repot Rotate)

names.each do |name|
  Chore.create(name: name)
end

garden_attributes = [
  { name: "My Little Garden", banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg" },
  { name: "My Other Garden", banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg" }
]

garden_attributes.each do |attribute|
  Garden.create(attribute)
end

plant_attributes = [
   { name: "Monstera",
     image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
     garden: Garden.first
   },
   {
     name: "Philo",
     image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
     garden: Garden.first
   },
   {
    name: "Dieff",
    image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
    garden: Garden.last
   }
]

plant_attributes.each do |plant_attribute|
  Plant.create(plant_attribute)
end
