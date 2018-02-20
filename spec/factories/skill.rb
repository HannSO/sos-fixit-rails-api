FactoryGirl.define do

  factory :skill do
    name {Faker::Hipster.word}

    factory :skill_with_users do
      after(:create) do |skill|
        skill.users << create_list(:user, 5)
      end
    end
    
  end

end
