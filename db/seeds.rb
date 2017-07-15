# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.destroy_all
Job.destroy_all

co = Country.create!(name: 'Inglaterra')
Country.create!(name: 'España')
ci = City.create!(name: 'Londres', country: co)

10.times do |i|
  Job.create!(description: "Trabajo genial para inmigrantes", city: ci)
end
