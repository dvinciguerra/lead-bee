require 'rails_helper'

RSpec.describe "segmentation_conditions/show", type: :view do
  before(:each) do
    @segmentation_condition = assign(:segmentation_condition, SegmentationCondition.create!(
      :field => "Field",
      :operator => "Operator",
      :value => "Value",
      :conjunction => "Conjunction",
      :segmentation => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Field/)
    expect(rendered).to match(/Operator/)
    expect(rendered).to match(/Value/)
    expect(rendered).to match(/Conjunction/)
    expect(rendered).to match(//)
  end
end
