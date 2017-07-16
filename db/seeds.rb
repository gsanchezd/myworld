# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.destroy_all
Job.destroy_all
City.destroy_all
Country.destroy_all
Company.destroy_all

co = Country.create!(name: 'Inglaterra')
Country.create!(name: 'España')
ci = City.create!(name: 'Londres', country: co)

company = Company.create(photo: 'https://fintech.nxtplabs.com/wp-content/uploads/2017/02/IMG_1667-e1487356705895.jpg', name: 'BCILAbs')
Employee.create(name: 'Gonzalo', email:'gonzalo@bcilabs.com', password: '12345678', company: company)

10.times do |i|
  Job.create!(description: 'Trabajo genial para inmigrantes', city: ci, company: company)
end
