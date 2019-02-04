FactoryBot.define do
  factory :private_message do
    title { "My private message title" }
    content { "The content of my private message is empty ... sorry, not sorry" }
    sender { User.create(first_name: "Selmen", last_name: "M'HAMDI", description: "J'aime les chats", email:"s.mhamdi@gmail.com", city_id: 1) }
  end
end
