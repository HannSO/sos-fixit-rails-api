FactoryGirl.define do

  factory :skill do

    name "bike-repairs"

    factory :skill_with_users do

      transient do
        user_count 5
      end

      after(:create) do |user, evaluator|
        create_list(:user, evaluator.user_count, skill: :skill)
      end

    end

  end

end
