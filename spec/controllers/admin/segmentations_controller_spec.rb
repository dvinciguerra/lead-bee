require 'rails_helper'

RSpec.describe Admin::SegmentationsController, type: :controller do


  let(:valid_attributes) {
		attributes_for(:segmentation)
  }

  let(:invalid_attributes) {
		attributes_for(:segmentation, name: nil)
  }

  describe "GET #index" do
    it "returns a success response" do
      segmentation = create(:segmentation)
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      segmentation = create(:segmentation)
      get :show, params: {id: segmentation.to_param}
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
      segmentation = create(:segmentation)
      get :edit, params: {id: segmentation.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Segmentation" do
        expect {
          post :create, params: {segmentation: valid_attributes}
        }.to change(Segmentation, :count).by(1)
      end

      it "redirects to the created segmentation" do
        post :create, params: {segmentation: valid_attributes}
        expect(response).to redirect_to(Segmentation.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {segmentation: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
				attributes_for(:segmentation)
      }

      it "updates the requested segmentation" do
        segmentation = Segmentation.create! valid_attributes
        put :update, params: {id: segmentation.to_param, segmentation: new_attributes}
        segmentation.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the segmentation" do
        segmentation = Segmentation.create! valid_attributes
        put :update, params: {id: segmentation.to_param, segmentation: valid_attributes}
        expect(response).to redirect_to(segmentation)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        segmentation = Segmentation.create! valid_attributes
        put :update, params: {id: segmentation.to_param, segmentation: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested segmentation" do
      segmentation = Segmentation.create! valid_attributes
      expect {
        delete :destroy, params: {id: segmentation.to_param}
      }.to change(Segmentation, :count).by(-1)
    end

    it "redirects to the segmentations list" do
      segmentation = Segmentation.create! valid_attributes
      delete :destroy, params: {id: segmentation.to_param}
      expect(response).to redirect_to(segmentations_url)
    end
  end

end
