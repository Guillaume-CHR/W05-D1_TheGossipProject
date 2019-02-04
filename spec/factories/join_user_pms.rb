FactoryBot.define do
  factory :join_user_pm do
    recipient { User.create(first_name: "Selmen", last_name: "M'HAMDI", description: "J'aime les chats", email:"s.mhamdi@gmail.com", city_id: 1, age: 28) }
    private_message { PrivateMessage.create(title: "PM Title", content: "PM Content", sender_id: 1) }
  end
end
