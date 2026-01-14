FactoryBot.define do
  factory :floor do
    name { "MyString" }
    association :home
  end
end
