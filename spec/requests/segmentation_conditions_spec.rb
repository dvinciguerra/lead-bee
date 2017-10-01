require 'rails_helper'

RSpec.describe "SegmentationConditions", type: :request do
  describe "GET /segmentation_conditions" do
    it "works! (now write some real specs)" do
      get segmentation_conditions_path
      expect(response).to have_http_status(200)
    end
  end
end
