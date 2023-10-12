# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |n|
  User.create(
    name: "user#{n+1}",
    email: "test#{n+1}@test.com",
    password: "123456",
  )
  puts "User #{n+1} created"
end


User.all.each do |user|
  5.times do |n|
    Book.create(
      title: "本#{n+1}",
      body: "サンプル投稿です#{n+1}",
      user_id: user.id,
      created_at: Time.current - rand(10).day
    )
    puts "Book for User #{user.id} created"
  end
end