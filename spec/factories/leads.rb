FactoryGirl.define do
  factory :lead do
    name Faker::Name.name
    email Faker::Internet.free_email
    age Faker::Number.between(16, 100)
    job Faker::Job.title
  end
end
