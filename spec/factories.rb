require 'faker'
FactoryGirl.define do
  factory :menu do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    start_at { Time.now }
  end
end

FactoryGirl.define do
  factory :menu_item do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    price { 1 }
    menu_id { 1 }
  end

end
