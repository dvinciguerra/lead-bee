require 'rails_helper'

RSpec.describe "segmentations/show", type: :view do
  before(:each) do
    @segmentation = assign(:segmentation, Segmentation.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
