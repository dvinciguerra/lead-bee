require 'rails_helper'

RSpec.describe "segmentation_conditions/edit", type: :view do
  before(:each) do
    @segmentation_condition = assign(:segmentation_condition, SegmentationCondition.create!(
      :field => "MyString",
      :operator => "MyString",
      :value => "MyString",
      :conjunction => "MyString",
      :segmentation => ""
    ))
  end

  it "renders the edit segmentation_condition form" do
    render

    assert_select "form[action=?][method=?]", segmentation_condition_path(@segmentation_condition), "post" do

      assert_select "input[name=?]", "segmentation_condition[field]"

      assert_select "input[name=?]", "segmentation_condition[operator]"

      assert_select "input[name=?]", "segmentation_condition[value]"

      assert_select "input[name=?]", "segmentation_condition[conjunction]"

      assert_select "input[name=?]", "segmentation_condition[segmentation]"
    end
  end
end
