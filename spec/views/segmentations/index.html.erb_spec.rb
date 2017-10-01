require 'rails_helper'

RSpec.describe "segmentations/index", type: :view do
  before(:each) do
    assign(:segmentations, [
      Segmentation.create!(
        :name => "Name",
        :description => "Description"
      ),
      Segmentation.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of segmentations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
