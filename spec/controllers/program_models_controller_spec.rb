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

RSpec.describe ProgramModelsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProgramModel. As you add validations to ProgramModel, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProgramModelsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all program_models as @program_models" do
      program_model = ProgramModel.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:program_models)).to eq([program_model])
    end
  end

  describe "GET show" do
    it "assigns the requested program_model as @program_model" do
      program_model = ProgramModel.create! valid_attributes
      get :show, {:id => program_model.to_param}, valid_session
      expect(assigns(:program_model)).to eq(program_model)
    end
  end

  describe "GET new" do
    it "assigns a new program_model as @program_model" do
      get :new, {}, valid_session
      expect(assigns(:program_model)).to be_a_new(ProgramModel)
    end
  end

  describe "GET edit" do
    it "assigns the requested program_model as @program_model" do
      program_model = ProgramModel.create! valid_attributes
      get :edit, {:id => program_model.to_param}, valid_session
      expect(assigns(:program_model)).to eq(program_model)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProgramModel" do
        expect {
          post :create, {:program_model => valid_attributes}, valid_session
        }.to change(ProgramModel, :count).by(1)
      end

      it "assigns a newly created program_model as @program_model" do
        post :create, {:program_model => valid_attributes}, valid_session
        expect(assigns(:program_model)).to be_a(ProgramModel)
        expect(assigns(:program_model)).to be_persisted
      end

      it "redirects to the created program_model" do
        post :create, {:program_model => valid_attributes}, valid_session
        expect(response).to redirect_to(ProgramModel.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved program_model as @program_model" do
        post :create, {:program_model => invalid_attributes}, valid_session
        expect(assigns(:program_model)).to be_a_new(ProgramModel)
      end

      it "re-renders the 'new' template" do
        post :create, {:program_model => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested program_model" do
        program_model = ProgramModel.create! valid_attributes
        put :update, {:id => program_model.to_param, :program_model => new_attributes}, valid_session
        program_model.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested program_model as @program_model" do
        program_model = ProgramModel.create! valid_attributes
        put :update, {:id => program_model.to_param, :program_model => valid_attributes}, valid_session
        expect(assigns(:program_model)).to eq(program_model)
      end

      it "redirects to the program_model" do
        program_model = ProgramModel.create! valid_attributes
        put :update, {:id => program_model.to_param, :program_model => valid_attributes}, valid_session
        expect(response).to redirect_to(program_model)
      end
    end

    describe "with invalid params" do
      it "assigns the program_model as @program_model" do
        program_model = ProgramModel.create! valid_attributes
        put :update, {:id => program_model.to_param, :program_model => invalid_attributes}, valid_session
        expect(assigns(:program_model)).to eq(program_model)
      end

      it "re-renders the 'edit' template" do
        program_model = ProgramModel.create! valid_attributes
        put :update, {:id => program_model.to_param, :program_model => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested program_model" do
      program_model = ProgramModel.create! valid_attributes
      expect {
        delete :destroy, {:id => program_model.to_param}, valid_session
      }.to change(ProgramModel, :count).by(-1)
    end

    it "redirects to the program_models list" do
      program_model = ProgramModel.create! valid_attributes
      delete :destroy, {:id => program_model.to_param}, valid_session
      expect(response).to redirect_to(program_models_url)
    end
  end

end