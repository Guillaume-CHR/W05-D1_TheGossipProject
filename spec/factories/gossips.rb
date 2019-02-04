FactoryBot.define do
  factory :gossip do
    title { "My Gossip Title" }
    content { "The content of my gossip is empty ... sorry, not sorry" }
    user { User.create(first_name: "Selmen", last_name: "M'HAMDI", description: "J'aime les chats", email:"s.mhamdi@gmail.com", city_id: 1, age: 28) }
  end
end
