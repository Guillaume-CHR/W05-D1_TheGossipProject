FactoryBot.define do
  factory :comment do
    title { "Commentaire Title" }
    content { "Le contenu dde mon commentaire est vide... sorry, not sorry" }
    user { User.create(first_name: "Selmen", last_name: "M'HAMDI", description: "J'aime les chats", email:"s.mhamdi@gmail.com", city_id: 1, age: 28) }
    commentable { Gossip.create(title: "Gossip title", content: "Gossip Content") }
  end
end
