FactoryGirl.define do
  factory :skill do
    name "bike-repairs"
    association :user, :factory => user
  end
end
