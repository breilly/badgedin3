require "spec_helper"

describe SeoreviewsController do
  describe "routing" do

    it "routes to #index" do
      get("/seoreviews").should route_to("seoreviews#index")
    end

    it "routes to #new" do
      get("/seoreviews/new").should route_to("seoreviews#new")
    end

    it "routes to #show" do
      get("/seoreviews/1").should route_to("seoreviews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/seoreviews/1/edit").should route_to("seoreviews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/seoreviews").should route_to("seoreviews#create")
    end

    it "routes to #update" do
      put("/seoreviews/1").should route_to("seoreviews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/seoreviews/1").should route_to("seoreviews#destroy", :id => "1")
    end

  end
end
