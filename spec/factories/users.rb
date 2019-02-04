FactoryBot.define do
  factory :user do
    first_name {"Lauren" }
    last_name {"OLIVIER" }
    description {"My description is empty ... sorry, not sorry" }
    email { "lauren.olivier@gmail.com" }
    city {City.create(name: "Toulouse", zip_code: "31100")}
  end
end
