# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
  new_city = City.create(name: Faker::Fantasy::Tolkien.location, zip: Faker::Address.zip)
end 

50.times do 
  new_user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence, email: Faker::Internet.email, age: rand(1..100), city_id: City.all.sample.id)
end 

100.times do
  new_gossip = Gossip.create(title: Faker::Fantasy::Tolkien.poem, content: Faker::Quote.yoda, user_id: User.all.sample.id)
end

100.times do 
  new_tag = Tag.create(title: Faker::Lorem.word)
end

50.times do
  new_pm = Pm.create(content: Faker::Movies::StarWars.quote, user_id: User.all.sample.id)
end

50.times do 
  new_pms = UserPm.create(user_id: User.all.sample.id, pm_id: Pm.all.sample.id)
end

100.times do 
  new_tag_gossip = TagGossip.create(gossip_id: Gossip.all.sample.id, tag_id: Tag.all.sample.id)
end 