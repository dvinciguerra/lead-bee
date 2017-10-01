require 'rails_helper'

RSpec.describe Admin::LeadsController, type: :controller do

  let(:valid_attributes) {
		attributes_for(:lead)
  }

  let(:invalid_attributes) {
		attributes_for(:lead, name: nil, email: nil)
  }

  describe "GET #index" do
    it "returns a success response" do
			lead = create(:lead)
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
			lead = create(:lead)
      get :show, params: {id: lead.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
			lead = create(:lead)
      get :edit, params: {id: lead.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Lead" do
        expect {
          post :create, params: {lead: valid_attributes}
        }.to change(Lead, :count).by(1)
      end

      it "redirects to the created lead" do
        post :create, params: {lead: valid_attributes}
        expect(response).to redirect_to(Lead.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {lead: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
				attributes_for(:lead)
      }

      it "updates the requested lead" do
				lead = create(:lead)
				params = new_attributes
        put :update, params: {id: lead.to_param, lead: params }
        lead.reload
				expect(lead.name).to be_equal params[:name]
      end

      it "redirects to the lead" do
				lead = create(:lead)
        put :update, params: {id: lead.to_param, lead: valid_attributes}
        expect(response).to redirect_to(lead)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
				lead = create(:lead)
        put :update, params: {id: lead.to_param, lead: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested lead" do
			lead = create(:lead)
      expect {
        delete :destroy, params: {id: lead.to_param}
      }.to change(Lead, :count).by(-1)
    end

    it "redirects to the leads list" do
			lead = create(:lead)
      delete :destroy, params: {id: lead.to_param}
      expect(response).to redirect_to(leads_url)
    end
  end

end
