FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password 'password'
    password_confirmation 'password'

    factory :user_with_skills do
      transient do
        skills_count 5
      end
      after(:create) do |user, evaluator|
        create_list(:skill, evaluator.skills_count, user: user)
      end
    end
  end
end
