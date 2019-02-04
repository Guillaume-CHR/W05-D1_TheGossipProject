FactoryBot.define do
  factory :like do
    user { User.create(first_name: "Selmen", last_name: "M'HAMDI", description: "J'aime les chats", email:"s.mhamdi@gmail.com", city_id: 1, age: 28) }
    likeable { Gossip.create(title: "Gossip title", content: "Gossip Content") }
  end
end
