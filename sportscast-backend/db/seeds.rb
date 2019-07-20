# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = [
    { username: "Daniel", password: "daniel123" },
    { username: "Gabriel", password: "gabriel123" },
    { username: "Lucy", password: "lucy123" },
  ]
  
  User.destroy_all
  
  users.each do |user|
    User.create user
    puts "Created user #{user[:username]}, password: #{user[:password]}"
  end
  
  puts "Finished user creation"
  puts "Finished seeding"