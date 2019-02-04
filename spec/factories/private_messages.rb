FactoryBot.define do
  factory :private_message do
    title { "MyString" }
    content { "MyText" }
    sender { nil }
  end
end
