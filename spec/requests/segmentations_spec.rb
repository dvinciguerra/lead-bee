require 'rails_helper'

RSpec.describe "Segmentations", type: :request do
  describe "GET /segmentations" do
    it "works! (now write some real specs)" do
      get segmentations_path
      expect(response).to have_http_status(200)
    end
  end
end
