# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'bundler'
Bundler.require

10.times do 
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::GreekPhilosophers.quote, email: Faker::Internet.email, city_id: City.all.sample.id, age: rand(8..50))
end

10.times do
	Gossip.create(title: Faker::HarryPotter.character, content: Faker::Lorem.paragraph(25), user_id: User.all.sample.id)
end

10.times do
	Tag.create(title: Faker::HarryPotter.character)
end

10.times do
	JoinGossipTag.create(tag_id: Tag.all.sample.id, gossip_id: Gossip.all.sample.id)
end

Comment.create(title: Faker::BreakingBad.character, content: Faker::BreakingBad.episode, user_id: User.all.sample.id, commentable_id: Gossip.all.sample.id, commentable_type: "Gossip")
10.times do
	r = rand(0..1)
	case r 
		when 0
			Comment.create(title: Faker::BreakingBad.character, content: Faker::BreakingBad.episode, user_id: User.all.sample.id, commentable_id: Gossip.all.sample.id, commentable_type: "Gossip")
		when 1
			Comment.create(title: Faker::BreakingBad.character, content: Faker::BreakingBad.episode, user_id: User.all.sample.id, commentable_id: Comment.all.sample.id, commentable_type: "Comment")
	end
end

10.times do
	r = rand(0..1)
	case r 
		when 0
			Like.create(user_id: User.all.sample.id, likeable_id: Gossip.all.sample.id, likeable_type: "Gossip")
		when 1
			Like.create(user_id: User.all.sample.id, likeable_id: Comment.all.sample.id, likeable_type: "Comment")
	end
end

10.times do
	PrivateMessage.create(title: Faker::BreakingBad.character, content: Faker::BreakingBad.episode, sender_id: User.all.sample.id)
end

10.times do
	JoinUserPm.create(recipient_id: User.all.sample.id, private_message_id: PrivateMessage.all.sample.id)
end