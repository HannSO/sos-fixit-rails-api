FactoryGirl.define do

  factory :user do
    email {Faker::Internet.email}
    password 'password'
    password_confirmation 'password'

    factory :user_with_skills do
      after(:create) do |user|
        user.skills << create_list(:skill, 5)
      end
    end

  end

end
