# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
Person.destroy_all

10.times do |i|
  Project.create(
    name: "Project #{i+1}",
    description: 'asdf',
    budget: rand(100000..100000000)
  )
end

20.times do |i|
  Person.create(
    name: "Person #{i+1}",
    email: "person#{i+1}@hotmail.com",
    ocupation: "Job #{i+1}"
  )
end