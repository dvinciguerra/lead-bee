FactoryGirl.define do
  factory :segmentation_condition do
		field %w[name email age job].sample
		operator SegmentationCondition::OPERATORS.sample
    value "test"
		conjunction SegmentationCondition::CONJUNCTIONS.sample
    segmentation nil
  end
end
