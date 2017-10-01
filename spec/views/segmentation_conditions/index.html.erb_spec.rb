require 'rails_helper'

RSpec.describe "segmentation_conditions/index", type: :view do
  before(:each) do
    assign(:segmentation_conditions, [
      SegmentationCondition.create!(
        :field => "Field",
        :operator => "Operator",
        :value => "Value",
        :conjunction => "Conjunction",
        :segmentation => ""
      ),
      SegmentationCondition.create!(
        :field => "Field",
        :operator => "Operator",
        :value => "Value",
        :conjunction => "Conjunction",
        :segmentation => ""
      )
    ])
  end

  it "renders a list of segmentation_conditions" do
    render
    assert_select "tr>td", :text => "Field".to_s, :count => 2
    assert_select "tr>td", :text => "Operator".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => "Conjunction".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
