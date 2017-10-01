require 'rails_helper'

RSpec.describe "segmentation_conditions/new", type: :view do
  before(:each) do
    assign(:segmentation_condition, SegmentationCondition.new(
      :field => "MyString",
      :operator => "MyString",
      :value => "MyString",
      :conjunction => "MyString",
      :segmentation => ""
    ))
  end

  it "renders new segmentation_condition form" do
    render

    assert_select "form[action=?][method=?]", segmentation_conditions_path, "post" do

      assert_select "input[name=?]", "segmentation_condition[field]"

      assert_select "input[name=?]", "segmentation_condition[operator]"

      assert_select "input[name=?]", "segmentation_condition[value]"

      assert_select "input[name=?]", "segmentation_condition[conjunction]"

      assert_select "input[name=?]", "segmentation_condition[segmentation]"
    end
  end
end
