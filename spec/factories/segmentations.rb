FactoryGirl.define do
  factory :segmentation do
		name Faker::Lorem.words(4)
		description Faker::Lorem.sentence
  end
end
