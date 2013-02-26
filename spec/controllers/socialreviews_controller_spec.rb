require 'spec_helper'

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

describe SocialreviewsController do

  # This should return the minimal set of attributes required to create a valid
  # Socialreview. As you add validations to Socialreview, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SocialreviewsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all socialreviews as @socialreviews" do
      socialreview = Socialreview.create! valid_attributes
      get :index, {}, valid_session
      assigns(:socialreviews).should eq([socialreview])
    end
  end

  describe "GET show" do
    it "assigns the requested socialreview as @socialreview" do
      socialreview = Socialreview.create! valid_attributes
      get :show, {:id => socialreview.to_param}, valid_session
      assigns(:socialreview).should eq(socialreview)
    end
  end

  describe "GET new" do
    it "assigns a new socialreview as @socialreview" do
      get :new, {}, valid_session
      assigns(:socialreview).should be_a_new(Socialreview)
    end
  end

  describe "GET edit" do
    it "assigns the requested socialreview as @socialreview" do
      socialreview = Socialreview.create! valid_attributes
      get :edit, {:id => socialreview.to_param}, valid_session
      assigns(:socialreview).should eq(socialreview)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Socialreview" do
        expect {
          post :create, {:socialreview => valid_attributes}, valid_session
        }.to change(Socialreview, :count).by(1)
      end

      it "assigns a newly created socialreview as @socialreview" do
        post :create, {:socialreview => valid_attributes}, valid_session
        assigns(:socialreview).should be_a(Socialreview)
        assigns(:socialreview).should be_persisted
      end

      it "redirects to the created socialreview" do
        post :create, {:socialreview => valid_attributes}, valid_session
        response.should redirect_to(Socialreview.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved socialreview as @socialreview" do
        # Trigger the behavior that occurs when invalid params are submitted
        Socialreview.any_instance.stub(:save).and_return(false)
        post :create, {:socialreview => {  }}, valid_session
        assigns(:socialreview).should be_a_new(Socialreview)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Socialreview.any_instance.stub(:save).and_return(false)
        post :create, {:socialreview => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested socialreview" do
        socialreview = Socialreview.create! valid_attributes
        # Assuming there are no other socialreviews in the database, this
        # specifies that the Socialreview created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Socialreview.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => socialreview.to_param, :socialreview => { "these" => "params" }}, valid_session
      end

      it "assigns the requested socialreview as @socialreview" do
        socialreview = Socialreview.create! valid_attributes
        put :update, {:id => socialreview.to_param, :socialreview => valid_attributes}, valid_session
        assigns(:socialreview).should eq(socialreview)
      end

      it "redirects to the socialreview" do
        socialreview = Socialreview.create! valid_attributes
        put :update, {:id => socialreview.to_param, :socialreview => valid_attributes}, valid_session
        response.should redirect_to(socialreview)
      end
    end

    describe "with invalid params" do
      it "assigns the socialreview as @socialreview" do
        socialreview = Socialreview.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Socialreview.any_instance.stub(:save).and_return(false)
        put :update, {:id => socialreview.to_param, :socialreview => {  }}, valid_session
        assigns(:socialreview).should eq(socialreview)
      end

      it "re-renders the 'edit' template" do
        socialreview = Socialreview.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Socialreview.any_instance.stub(:save).and_return(false)
        put :update, {:id => socialreview.to_param, :socialreview => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested socialreview" do
      socialreview = Socialreview.create! valid_attributes
      expect {
        delete :destroy, {:id => socialreview.to_param}, valid_session
      }.to change(Socialreview, :count).by(-1)
    end

    it "redirects to the socialreviews list" do
      socialreview = Socialreview.create! valid_attributes
      delete :destroy, {:id => socialreview.to_param}, valid_session
      response.should redirect_to(socialreviews_url)
    end
  end

end