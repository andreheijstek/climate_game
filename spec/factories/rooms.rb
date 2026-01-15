FactoryBot.define do
  factory :room do
    name { "MyString" }
    association :floor
  end
end
