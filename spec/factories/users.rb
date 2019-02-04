FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    description { "MyText" }
    email { "MyString" }
    city { nil }
  end
end
