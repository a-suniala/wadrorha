require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CommunitiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Community. As you add validations to Community, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CommunitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all communities as @communities" do
      community = Community.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:communities)).to eq([community])
    end
  end

  describe "GET #show" do
    it "assigns the requested community as @community" do
      community = Community.create! valid_attributes
      get :show, {:id => community.to_param}, valid_session
      expect(assigns(:community)).to eq(community)
    end
  end

  describe "when logged in" do
    login_user
  describe "GET #new" do
    it "assigns a new community as @community" do
      get :new, {}, valid_session
      expect(assigns(:community)).to be_a_new(Community)
    end
  end
  end

  describe "GET #edit" do
    it "assigns the requested community as @community" do
      community = Community.create! valid_attributes
      get :edit, {:id => community.to_param}, valid_session
      expect(assigns(:community)).to eq(community)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Community" do
        expect {
          post :create, {:community => valid_attributes}, valid_session
        }.to change(Community, :count).by(1)
      end

      it "assigns a newly created community as @community" do
        post :create, {:community => valid_attributes}, valid_session
        expect(assigns(:community)).to be_a(Community)
        expect(assigns(:community)).to be_persisted
      end

      it "redirects to the created community" do
        post :create, {:community => valid_attributes}, valid_session
        expect(response).to redirect_to(Community.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved community as @community" do
        post :create, {:community => invalid_attributes}, valid_session
        expect(assigns(:community)).to be_a_new(Community)
      end

      it "re-renders the 'new' template" do
        post :create, {:community => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested community" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => new_attributes}, valid_session
        community.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested community as @community" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => valid_attributes}, valid_session
        expect(assigns(:community)).to eq(community)
      end

      it "redirects to the community" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => valid_attributes}, valid_session
        expect(response).to redirect_to(community)
      end
    end

    context "with invalid params" do
      it "assigns the community as @community" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => invalid_attributes}, valid_session
        expect(assigns(:community)).to eq(community)
      end

      it "re-renders the 'edit' template" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested community" do
      community = Community.create! valid_attributes
      expect {
        delete :destroy, {:id => community.to_param}, valid_session
      }.to change(Community, :count).by(-1)
    end

    it "redirects to the communities list" do
      community = Community.create! valid_attributes
      delete :destroy, {:id => community.to_param}, valid_session
      expect(response).to redirect_to(communities_url)
    end
  end

end
