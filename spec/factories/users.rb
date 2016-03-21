FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password 'password'
    association :skill, :factory => :skill
  end
end
