require 'rails_helper'

RSpec.describe "segmentations/new", type: :view do
  before(:each) do
    assign(:segmentation, Segmentation.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new segmentation form" do
    render

    assert_select "form[action=?][method=?]", segmentations_path, "post" do

      assert_select "input[name=?]", "segmentation[name]"

      assert_select "input[name=?]", "segmentation[description]"
    end
  end
end
