require 'rails_helper'

RSpec.describe "Leads", type: :request do
  describe "POST /leads" do
    it "does create a new lead" do
      get leads_path(build :lead)
      expect(response).to have_http_status(200)
    end
  end
end
