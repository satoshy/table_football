FactoryGirl.define do
  factory :tournament do
    name "tournament_1"
    description "The first text"
    status 1
    after(:create) {}
  end
end
