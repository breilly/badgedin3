require "spec_helper"

describe SocialreviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/socialreviews").should route_to("socialreviews#index")
    end

    it "routes to #new" do
      get("/socialreviews/new").should route_to("socialreviews#new")
    end

    it "routes to #show" do
      get("/socialreviews/1").should route_to("socialreviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/socialreviews/1/edit").should route_to("socialreviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/socialreviews").should route_to("socialreviews#create")
    end

    it "routes to #update" do
      put("/socialreviews/1").should route_to("socialreviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/socialreviews/1").should route_to("socialreviews#destroy", :id => "1")
    end

  end
end
