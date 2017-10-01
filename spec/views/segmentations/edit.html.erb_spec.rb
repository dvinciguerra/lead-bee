require 'rails_helper'

RSpec.describe "segmentations/edit", type: :view do
  before(:each) do
    @segmentation = assign(:segmentation, Segmentation.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit segmentation form" do
    render

    assert_select "form[action=?][method=?]", segmentation_path(@segmentation), "post" do

      assert_select "input[name=?]", "segmentation[name]"

      assert_select "input[name=?]", "segmentation[description]"
    end
  end
end
