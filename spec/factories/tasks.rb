FactoryBot.define do
  factory :task do
    name { "MyString" }
    description { "MyText" }
    status { "MyString" }
    user { nil }
  end
end
