FactoryBot.define do
  factory :comment do
    title { "MyString" }
    content { "MyText" }
    user { nil }
    commentable { nil }
  end
end
